contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 signatureBurnStatus;
address stor3;

function signatureBurnStatus(bytes32 arg1) {
    return signatureBurnStatus[arg1]
}

function allowance(address arg1, address arg2, address arg3) {
    return allowance[address(arg1)][address(arg2)][address(arg3)]
}

function balanceOf(address arg1, address arg2) {
    return balanceOf[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approveTokens(address arg1, address arg2, uint256 arg3) {
    allowance[address(arg2)][address(msg.sender)][address(arg1)] = arg3
    emit Approval(address(arg1), arg3, msg.sender, arg2);
    return 1
}

function getRelayingKing() {
    require ext_code.size(stor3)
    call stor3.getMiningKing() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function transferTokens(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg2)][address(msg.sender)]
    balanceOf[address(arg2)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)][address(arg1)] + arg3 >= balanceOf[address(arg2)][address(arg1)]
    balanceOf[address(arg2)][address(arg1)] += arg3
    emit Transfer(address(arg1), arg3, msg.sender, arg2);
    return 1
}

function transferTokensFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require arg4 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg4
    require arg4 <= allowance[address(arg3)][address(arg1)][address(arg2)]
    allowance[address(arg3)][address(arg1)][address(arg2)] -= arg4
    require balanceOf[address(arg3)][address(arg2)] + arg4 >= balanceOf[address(arg3)][address(arg2)]
    balanceOf[address(arg3)][address(arg2)] += arg4
    emit Transfer(address(arg2), arg4, arg3, arg1);
    return 1
}

function withdrawTokens(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, balanceOf[address(arg1)][address(msg.sender)]);
    return 1
}

function depositTokens(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require balanceOf[address(arg2)][address(arg1)] + arg3 >= balanceOf[address(arg2)][address(arg1)]
    balanceOf[address(arg2)][address(arg1)] += arg3
    emit Deposit(address(arg2), address(arg1), arg3, balanceOf[address(arg2)][address(arg1)]);
    return 1
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require balanceOf[address(arg3)][address(arg1)] + arg2 >= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] += arg2
    emit Deposit(address(arg3), address(arg1), arg2, balanceOf[address(arg3)][address(arg1)]);
    return 1
}

function withdrawTokensFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require arg4 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg4
    require arg4 <= allowance[address(arg3)][address(arg1)][address(arg2)]
    allowance[address(arg3)][address(arg1)][address(arg2)] -= arg4
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdraw(address(arg3), address(arg1), arg4, balanceOf[address(arg3)][address(arg1)]);
    return 1
}

function getLavaTypedDataHash(bytes arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = address(arg2)
    return sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 20], arg3, this.address, arg4, arg5, arg6, arg7, arg8))
}

function burnSignature(bytes arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg9.length
    mem[ceil32(arg1.length) + 160 len arg9.length] = arg9[all]
    mem[ceil32(arg1.length) + ceil32(arg9.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg9.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg9.length) + 160] = address(arg2)
    _38 = sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg9.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 20], arg3, this.address, arg4, arg5, arg6, arg7, arg8))
    require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
    delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args _38, Array(len=arg9.length, data=arg9[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require address(delegate.return_data[0]) == arg2
    require arg2 == msg.sender
    signatureBurnStatus[_38] = 2
    require not signatureBurnStatus[_38]
    return 1
}

function approveTokensFromAnyWithSignature(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8) {
    mem[ceil32(arg8.length) + 192 len 0] = None
    require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
    delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, sha3(mem[ceil32(arg8.length) + 192 len 10], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)), Array(len=arg8.length, data=arg8[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == address(delegate.return_data[0])
    require ext_code.size(stor3)
    call stor3.getMiningKing() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require block.number <= arg6
    signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][sha3(mem[ceil32(arg8.length) + 192 len 10], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)] = 1
    require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][sha3(mem[ceil32(arg8.length) + 192 len 10], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)]
    allowance[address(arg3)][address(arg1)][address(msg.sender)] = arg5
    emit Approval(msg.sender, arg5, arg1, arg3);
    require arg5 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg5
    require arg5 <= allowance[address(arg3)][address(arg1)][address(msg.sender)]
    allowance[address(arg3)][address(arg1)][address(msg.sender)] -= arg5
    require balanceOf[address(arg3)][address(msg.sender)] + arg5 >= balanceOf[address(arg3)][address(msg.sender)]
    balanceOf[address(arg3)][address(msg.sender)] += arg5
    emit Transfer(msg.sender, arg5, arg3, arg1);
    allowance[address(arg3)][address(arg1)][address(arg2)] = arg4
    emit Approval(address(arg2), arg4, arg1, arg3);
    return 1
}

function approveTokensFromKingWithSignature(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8) {
    mem[ceil32(arg8.length) + 192 len 0] = None
    require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
    delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, sha3(mem[ceil32(arg8.length) + 192 len 11], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)), Array(len=arg8.length, data=arg8[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == address(delegate.return_data[0])
    require ext_code.size(stor3)
    call stor3.getMiningKing() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == address(ext_call.return_data[0])
    require block.number <= arg6
    signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][sha3(mem[ceil32(arg8.length) + 192 len 11], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)] = 1
    require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][sha3(mem[ceil32(arg8.length) + 192 len 11], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)]
    allowance[address(arg3)][address(arg1)][address(msg.sender)] = arg5
    emit Approval(msg.sender, arg5, arg1, arg3);
    require arg5 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg5
    require arg5 <= allowance[address(arg3)][address(arg1)][address(msg.sender)]
    allowance[address(arg3)][address(arg1)][address(msg.sender)] -= arg5
    require balanceOf[address(arg3)][address(msg.sender)] + arg5 >= balanceOf[address(arg3)][address(msg.sender)]
    balanceOf[address(arg3)][address(msg.sender)] += arg5
    emit Transfer(msg.sender, arg5, arg3, arg1);
    allowance[address(arg3)][address(arg1)][address(arg2)] = arg4
    emit Approval(address(arg2), arg4, arg1, arg3);
    return 1
}

function transferTokensFromAnyWithSignature(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8) {
    mem[ceil32(arg8.length) + 192 len 0] = None
    require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
    delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, sha3(mem[ceil32(arg8.length) + 192 len 11], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)), Array(len=arg8.length, data=arg8[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == address(delegate.return_data[0])
    require ext_code.size(stor3)
    call stor3.getMiningKing() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require block.number <= arg6
    signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][sha3(mem[ceil32(arg8.length) + 192 len 11], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)] = 1
    require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][sha3(mem[ceil32(arg8.length) + 192 len 11], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)]
    allowance[address(arg3)][address(arg1)][address(msg.sender)] = arg5
    emit Approval(msg.sender, arg5, arg1, arg3);
    require arg5 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg5
    require arg5 <= allowance[address(arg3)][address(arg1)][address(msg.sender)]
    allowance[address(arg3)][address(arg1)][address(msg.sender)] -= arg5
    require balanceOf[address(arg3)][address(msg.sender)] + arg5 >= balanceOf[address(arg3)][address(msg.sender)]
    balanceOf[address(arg3)][address(msg.sender)] += arg5
    emit Transfer(msg.sender, arg5, arg3, arg1);
    allowance[address(arg3)][address(arg1)][address(arg2)] = arg4
    emit Approval(address(arg2), arg4, arg1, arg3);
    require arg4 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg4
    require arg4 <= allowance[address(arg3)][address(arg1)][address(arg2)]
    allowance[address(arg3)][address(arg1)][address(arg2)] -= arg4
    require balanceOf[address(arg3)][address(arg2)] + arg4 >= balanceOf[address(arg3)][address(arg2)]
    balanceOf[address(arg3)][address(arg2)] += arg4
    emit Transfer(address(arg2), arg4, arg3, arg1);
    return 1
}

function transferTokensFromKingWithSignature(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8) {
    mem[ceil32(arg8.length) + 192 len 0] = None
    require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
    delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, sha3(mem[ceil32(arg8.length) + 192 len 12], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)), Array(len=arg8.length, data=arg8[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == address(delegate.return_data[0])
    require ext_code.size(stor3)
    call stor3.getMiningKing() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == address(ext_call.return_data[0])
    require block.number <= arg6
    signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][sha3(mem[ceil32(arg8.length) + 192 len 12], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)] = 1
    require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][sha3(mem[ceil32(arg8.length) + 192 len 12], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)]
    allowance[address(arg3)][address(arg1)][address(msg.sender)] = arg5
    emit Approval(msg.sender, arg5, arg1, arg3);
    require arg5 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg5
    require arg5 <= allowance[address(arg3)][address(arg1)][address(msg.sender)]
    allowance[address(arg3)][address(arg1)][address(msg.sender)] -= arg5
    require balanceOf[address(arg3)][address(msg.sender)] + arg5 >= balanceOf[address(arg3)][address(msg.sender)]
    balanceOf[address(arg3)][address(msg.sender)] += arg5
    emit Transfer(msg.sender, arg5, arg3, arg1);
    allowance[address(arg3)][address(arg1)][address(arg2)] = arg4
    emit Approval(address(arg2), arg4, arg1, arg3);
    require arg4 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg4
    require arg4 <= allowance[address(arg3)][address(arg1)][address(arg2)]
    allowance[address(arg3)][address(arg1)][address(arg2)] -= arg4
    require balanceOf[address(arg3)][address(arg2)] + arg4 >= balanceOf[address(arg3)][address(arg2)]
    balanceOf[address(arg3)][address(arg2)] += arg4
    emit Transfer(address(arg2), arg4, arg3, arg1);
    return 1
}

function withdrawTokensFromAnyWithSignature(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8) {
    mem[ceil32(arg8.length) + 192 len 0] = None
    require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
    delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, sha3(mem[ceil32(arg8.length) + 192 len 11], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)), Array(len=arg8.length, data=arg8[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == address(delegate.return_data[0])
    require ext_code.size(stor3)
    call stor3.getMiningKing() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require block.number <= arg6
    signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][sha3(mem[ceil32(arg8.length) + 192 len 11], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)] = 1
    require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][sha3(mem[ceil32(arg8.length) + 192 len 11], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)]
    allowance[address(arg3)][address(arg1)][address(msg.sender)] = arg5
    emit Approval(msg.sender, arg5, arg1, arg3);
    require arg5 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg5
    require arg5 <= allowance[address(arg3)][address(arg1)][address(msg.sender)]
    allowance[address(arg3)][address(arg1)][address(msg.sender)] -= arg5
    require balanceOf[address(arg3)][address(msg.sender)] + arg5 >= balanceOf[address(arg3)][address(msg.sender)]
    balanceOf[address(arg3)][address(msg.sender)] += arg5
    emit Transfer(msg.sender, arg5, arg3, arg1);
    allowance[address(arg3)][address(arg1)][address(arg2)] = arg4
    emit Approval(address(arg2), arg4, arg1, arg3);
    require arg4 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg4
    require arg4 <= allowance[address(arg3)][address(arg1)][address(arg2)]
    allowance[address(arg3)][address(arg1)][address(arg2)] -= arg4
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdraw(address(arg3), address(arg1), arg4, balanceOf[address(arg3)][address(arg1)]);
    return 1
}

function withdrawTokensFromKingWithSignature(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8) {
    mem[ceil32(arg8.length) + 192 len 0] = None
    require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
    delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, sha3(mem[ceil32(arg8.length) + 192 len 12], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)), Array(len=arg8.length, data=arg8[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == address(delegate.return_data[0])
    require ext_code.size(stor3)
    call stor3.getMiningKing() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == address(ext_call.return_data[0])
    require block.number <= arg6
    signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][sha3(mem[ceil32(arg8.length) + 192 len 12], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)] = 1
    require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][sha3(mem[ceil32(arg8.length) + 192 len 12], arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)]
    allowance[address(arg3)][address(arg1)][address(msg.sender)] = arg5
    emit Approval(msg.sender, arg5, arg1, arg3);
    require arg5 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg5
    require arg5 <= allowance[address(arg3)][address(arg1)][address(msg.sender)]
    allowance[address(arg3)][address(arg1)][address(msg.sender)] -= arg5
    require balanceOf[address(arg3)][address(msg.sender)] + arg5 >= balanceOf[address(arg3)][address(msg.sender)]
    balanceOf[address(arg3)][address(msg.sender)] += arg5
    emit Transfer(msg.sender, arg5, arg3, arg1);
    allowance[address(arg3)][address(arg1)][address(arg2)] = arg4
    emit Approval(address(arg2), arg4, arg1, arg3);
    require arg4 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg4
    require arg4 <= allowance[address(arg3)][address(arg1)][address(arg2)]
    allowance[address(arg3)][address(arg1)][address(arg2)] -= arg4
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdraw(address(arg3), address(arg1), arg4, balanceOf[address(arg3)][address(arg1)]);
    return 1
}

function approveAndCall(bytes arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg9.length
    mem[ceil32(arg1.length) + 160 len arg9.length] = arg9[all]
    mem[ceil32(arg1.length) + ceil32(arg9.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg9.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg9.length) + 160] = address(arg2)
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg9.length) + 180] = address(arg3)
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg9.length) + 200] = address(this.address)
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg9.length) + 220] = address(arg4)
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg9.length) + 240] = arg5
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg9.length) + 272] = arg6
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg9.length) + 304] = arg7
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg9.length) + 336] = arg8
    _1967 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg9.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 20], arg3, this.address, arg4, arg5, arg6, arg7, arg8)
    mem[64] = ceil32(arg1.length) + ceil32(arg9.length) + 224
    mem[ceil32(arg1.length) + ceil32(arg9.length) + 160] = 12
    mem[ceil32(arg1.length) + ceil32(arg9.length) + 192] = 'kingTransfer'
    if arg1.length == 12:
        idx = 0
        while idx < arg1.length:
            require idx < 12
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) == Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 192]):
                idx = idx + 1
                continue 
            mem[64] = ceil32(arg1.length) + ceil32(arg9.length) + 288
            mem[ceil32(arg1.length) + ceil32(arg9.length) + 224] = 12
            mem[ceil32(arg1.length) + ceil32(arg9.length) + 256] = 'kingWithdraw'
            if arg1.length == 12:
                idx = 0
                while idx < arg1.length:
                    require idx < 12
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) == Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 256]):
                        idx = idx + 1
                        continue 
                    mem[64] = ceil32(arg1.length) + ceil32(arg9.length) + 352
                    mem[ceil32(arg1.length) + ceil32(arg9.length) + 288] = 11
                    mem[ceil32(arg1.length) + ceil32(arg9.length) + 320] = 'kingApprove'
                    if arg1.length != 11:
                        idx = 0
                        while idx < arg9.length:
                            mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 452] = mem[ceil32(arg1.length) + idx + 160]
                            idx = idx + 32
                            continue 
                        require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
                        delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, _1967), Array(len=arg9.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 452 len arg9.length])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg2 == address(delegate.return_data[0])
                        require ext_code.size(stor3)
                        call stor3.getMiningKing() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        idx = 0
                        while idx < arg1.length:
                            require idx < 11
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) == Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 320]):
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < arg9.length:
                                mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 452] = mem[ceil32(arg1.length) + idx + 160]
                                idx = idx + 32
                                continue 
                            require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
                            delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
                                 gas gas_remaining wei
                                args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, _1967), Array(len=arg9.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 452 len arg9.length])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 == address(delegate.return_data[0])
                            require ext_code.size(stor3)
                            call stor3.getMiningKing() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require block.number <= arg7
                            signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967] = 1
                            require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967]
                            allowance[address(arg4)][address(arg2)][address(msg.sender)] = arg6
                            emit Approval(msg.sender, arg6, arg2, arg4);
                            require arg6 <= balanceOf[address(arg4)][address(arg2)]
                            balanceOf[address(arg4)][address(arg2)] -= arg6
                            require arg6 <= allowance[address(arg4)][address(arg2)][address(msg.sender)]
                            allowance[address(arg4)][address(arg2)][address(msg.sender)] -= arg6
                            require balanceOf[address(arg4)][address(msg.sender)] + arg6 >= balanceOf[address(arg4)][address(msg.sender)]
                            balanceOf[address(arg4)][address(msg.sender)] += arg6
                            emit Transfer(msg.sender, arg6, arg4, arg2);
                            allowance[address(arg4)][address(arg2)][address(arg3)] = arg5
                            emit Approval(address(arg3), arg5, arg2, arg4);
                            idx = 0
                            while idx < arg1.length:
                                mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 516] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            require ext_code.size(arg3)
                            call arg3.0x8f4ffcb1 with:
                                 gas gas_remaining wei
                                args address(arg2), arg5, address(arg4), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 516 len arg1.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = 0
                        while idx < arg9.length:
                            mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 452] = mem[ceil32(arg1.length) + idx + 160]
                            idx = idx + 32
                            continue 
                        require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
                        delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, _1967), Array(len=arg9.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 452 len arg9.length])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg2 == address(delegate.return_data[0])
                        require ext_code.size(stor3)
                        call stor3.getMiningKing() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.sender == address(ext_call.return_data[0])
                    require block.number <= arg7
                    signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967] = 1
                    require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967]
                    allowance[address(arg4)][address(arg2)][address(msg.sender)] = arg6
                    emit Approval(msg.sender, arg6, arg2, arg4);
                    require arg6 <= balanceOf[address(arg4)][address(arg2)]
                    balanceOf[address(arg4)][address(arg2)] -= arg6
                    require arg6 <= allowance[address(arg4)][address(arg2)][address(msg.sender)]
                    allowance[address(arg4)][address(arg2)][address(msg.sender)] -= arg6
                    require balanceOf[address(arg4)][address(msg.sender)] + arg6 >= balanceOf[address(arg4)][address(msg.sender)]
                    balanceOf[address(arg4)][address(msg.sender)] += arg6
                    emit Transfer(msg.sender, arg6, arg4, arg2);
                    allowance[address(arg4)][address(arg2)][address(arg3)] = arg5
                    emit Approval(address(arg3), arg5, arg2, arg4);
                    idx = 0
                    while idx < arg1.length:
                        mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 516] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    require ext_code.size(arg3)
                    call arg3.0x8f4ffcb1 with:
                         gas gas_remaining wei
                        args address(arg2), arg5, address(arg4), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 516 len arg1.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < arg9.length:
                    mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 388] = mem[ceil32(arg1.length) + idx + 160]
                    idx = idx + 32
                    continue 
                require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
                delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
                     gas gas_remaining wei
                    args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, _1967), Array(len=arg9.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 388 len arg9.length])
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg2 == address(delegate.return_data[0])
                require ext_code.size(stor3)
                call stor3.getMiningKing() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == address(ext_call.return_data[0])
                require block.number <= arg7
                signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967] = 1
                require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967]
                allowance[address(arg4)][address(arg2)][address(msg.sender)] = arg6
                emit Approval(msg.sender, arg6, arg2, arg4);
                require arg6 <= balanceOf[address(arg4)][address(arg2)]
                balanceOf[address(arg4)][address(arg2)] -= arg6
                require arg6 <= allowance[address(arg4)][address(arg2)][address(msg.sender)]
                allowance[address(arg4)][address(arg2)][address(msg.sender)] -= arg6
                require balanceOf[address(arg4)][address(msg.sender)] + arg6 >= balanceOf[address(arg4)][address(msg.sender)]
                balanceOf[address(arg4)][address(msg.sender)] += arg6
                emit Transfer(msg.sender, arg6, arg4, arg2);
                allowance[address(arg4)][address(arg2)][address(arg3)] = arg5
                emit Approval(address(arg3), arg5, arg2, arg4);
                idx = 0
                while idx < arg1.length:
                    mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 452] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                require ext_code.size(arg3)
                call arg3.0x8f4ffcb1 with:
                     gas gas_remaining wei
                    args address(arg2), arg5, address(arg4), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 452 len arg1.length])
            else:
                mem[64] = ceil32(arg1.length) + ceil32(arg9.length) + 352
                mem[ceil32(arg1.length) + ceil32(arg9.length) + 288] = 11
                mem[ceil32(arg1.length) + ceil32(arg9.length) + 320] = 'kingApprove'
                if arg1.length != 11:
                    idx = 0
                    while idx < arg9.length:
                        mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 452] = mem[ceil32(arg1.length) + idx + 160]
                        idx = idx + 32
                        continue 
                    require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
                    delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
                         gas gas_remaining wei
                        args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, _1967), Array(len=arg9.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 452 len arg9.length])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg2 == address(delegate.return_data[0])
                    require ext_code.size(stor3)
                    call stor3.getMiningKing() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    idx = 0
                    while idx < arg1.length:
                        require idx < 11
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) == Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 320]):
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg9.length:
                            mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 452] = mem[ceil32(arg1.length) + idx + 160]
                            idx = idx + 32
                            continue 
                        require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
                        delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, _1967), Array(len=arg9.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 452 len arg9.length])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg2 == address(delegate.return_data[0])
                        require ext_code.size(stor3)
                        call stor3.getMiningKing() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require block.number <= arg7
                        signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967] = 1
                        require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967]
                        allowance[address(arg4)][address(arg2)][address(msg.sender)] = arg6
                        emit Approval(msg.sender, arg6, arg2, arg4);
                        require arg6 <= balanceOf[address(arg4)][address(arg2)]
                        balanceOf[address(arg4)][address(arg2)] -= arg6
                        require arg6 <= allowance[address(arg4)][address(arg2)][address(msg.sender)]
                        allowance[address(arg4)][address(arg2)][address(msg.sender)] -= arg6
                        require balanceOf[address(arg4)][address(msg.sender)] + arg6 >= balanceOf[address(arg4)][address(msg.sender)]
                        balanceOf[address(arg4)][address(msg.sender)] += arg6
                        emit Transfer(msg.sender, arg6, arg4, arg2);
                        allowance[address(arg4)][address(arg2)][address(arg3)] = arg5
                        emit Approval(address(arg3), arg5, arg2, arg4);
                        idx = 0
                        while idx < arg1.length:
                            mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 516] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(arg3)
                        call arg3.0x8f4ffcb1 with:
                             gas gas_remaining wei
                            args address(arg2), arg5, address(arg4), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 516 len arg1.length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < arg9.length:
                        mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 452] = mem[ceil32(arg1.length) + idx + 160]
                        idx = idx + 32
                        continue 
                    require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
                    delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
                         gas gas_remaining wei
                        args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, _1967), Array(len=arg9.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 452 len arg9.length])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg2 == address(delegate.return_data[0])
                    require ext_code.size(stor3)
                    call stor3.getMiningKing() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.sender == address(ext_call.return_data[0])
                require block.number <= arg7
                signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967] = 1
                require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967]
                allowance[address(arg4)][address(arg2)][address(msg.sender)] = arg6
                emit Approval(msg.sender, arg6, arg2, arg4);
                require arg6 <= balanceOf[address(arg4)][address(arg2)]
                balanceOf[address(arg4)][address(arg2)] -= arg6
                require arg6 <= allowance[address(arg4)][address(arg2)][address(msg.sender)]
                allowance[address(arg4)][address(arg2)][address(msg.sender)] -= arg6
                require balanceOf[address(arg4)][address(msg.sender)] + arg6 >= balanceOf[address(arg4)][address(msg.sender)]
                balanceOf[address(arg4)][address(msg.sender)] += arg6
                emit Transfer(msg.sender, arg6, arg4, arg2);
                allowance[address(arg4)][address(arg2)][address(arg3)] = arg5
                emit Approval(address(arg3), arg5, arg2, arg4);
                idx = 0
                while idx < arg1.length:
                    mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 516] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                require ext_code.size(arg3)
                call arg3.0x8f4ffcb1 with:
                     gas gas_remaining wei
                    args address(arg2), arg5, address(arg4), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 516 len arg1.length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg1.length) + ceil32(arg9.length) + 324 len ceil32(arg9.length)] = arg9[all], mem[ceil32(arg1.length) + arg9.length + 160 len ceil32(arg9.length) - arg9.length]
        require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
        delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
             gas gas_remaining wei
            args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, _1967), Array(len=arg9.length, data=arg9[all])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 == address(delegate.return_data[0])
        require ext_code.size(stor3)
        call stor3.getMiningKing() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == address(ext_call.return_data[0])
        require block.number <= arg7
        signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967] = 1
        require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967]
        allowance[address(arg4)][address(arg2)][address(msg.sender)] = arg6
        emit Approval(msg.sender, arg6, arg2, arg4);
        require arg6 <= balanceOf[address(arg4)][address(arg2)]
        balanceOf[address(arg4)][address(arg2)] -= arg6
        require arg6 <= allowance[address(arg4)][address(arg2)][address(msg.sender)]
        allowance[address(arg4)][address(arg2)][address(msg.sender)] -= arg6
        require balanceOf[address(arg4)][address(msg.sender)] + arg6 >= balanceOf[address(arg4)][address(msg.sender)]
        balanceOf[address(arg4)][address(msg.sender)] += arg6
        emit Transfer(msg.sender, arg6, arg4, arg2);
        allowance[address(arg4)][address(arg2)][address(arg3)] = arg5
        emit Approval(address(arg3), arg5, arg2, arg4);
        mem[ceil32(arg1.length) + ceil32(arg9.length) + 228] = arg2
        mem[ceil32(arg1.length) + ceil32(arg9.length) + 260] = arg5
        mem[ceil32(arg1.length) + ceil32(arg9.length) + 292] = arg4
        mem[ceil32(arg1.length) + ceil32(arg9.length) + 324] = 128
        mem[ceil32(arg1.length) + ceil32(arg9.length) + 356] = arg1.length
        mem[ceil32(arg1.length) + ceil32(arg9.length) + 388 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            require ext_code.size(arg3)
            call arg3.0x8f4ffcb1 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg9.length) + 228 len arg1.length + 12], arg5, arg6, arg7, arg8, mem[ceil32(arg1.length) + ceil32(arg9.length) + arg1.length + 368 len 20]
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg9.length) + 388] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg9.length) + -(arg1.length % 32) + 420 len arg1.length % 32]
            require ext_code.size(arg3)
            call arg3.0x8f4ffcb1 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg9.length) + 228 len arg1.length + 12], arg5, arg6, arg7, arg8, mem[ceil32(arg1.length) + ceil32(arg9.length) + arg1.length + 368 len -(arg1.length % 32) + 52]
    else:
        mem[64] = ceil32(arg1.length) + ceil32(arg9.length) + 288
        mem[ceil32(arg1.length) + ceil32(arg9.length) + 224] = 12
        mem[ceil32(arg1.length) + ceil32(arg9.length) + 256] = 'kingWithdraw'
        if arg1.length != 12:
            mem[64] = ceil32(arg1.length) + ceil32(arg9.length) + 352
            mem[ceil32(arg1.length) + ceil32(arg9.length) + 288] = 11
            mem[ceil32(arg1.length) + ceil32(arg9.length) + 320] = 'kingApprove'
            if arg1.length != 11:
                require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
                delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
                     gas gas_remaining wei
                    args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, _1967), Array(len=arg9.length, data=arg9[all])
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg2 == address(delegate.return_data[0])
                require ext_code.size(stor3)
                call stor3.getMiningKing() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                idx = 0
                while idx < arg1.length:
                    require idx < 11
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) == Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 320]):
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg9.length:
                        mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 452] = mem[ceil32(arg1.length) + idx + 160]
                        idx = idx + 32
                        continue 
                    require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
                    delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
                         gas gas_remaining wei
                        args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, _1967), Array(len=arg9.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 452 len arg9.length])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg2 == address(delegate.return_data[0])
                    require ext_code.size(stor3)
                    call stor3.getMiningKing() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require block.number <= arg7
                    signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967] = 1
                    require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967]
                    allowance[address(arg4)][address(arg2)][address(msg.sender)] = arg6
                    emit Approval(msg.sender, arg6, arg2, arg4);
                    require arg6 <= balanceOf[address(arg4)][address(arg2)]
                    balanceOf[address(arg4)][address(arg2)] -= arg6
                    require arg6 <= allowance[address(arg4)][address(arg2)][address(msg.sender)]
                    allowance[address(arg4)][address(arg2)][address(msg.sender)] -= arg6
                    require balanceOf[address(arg4)][address(msg.sender)] + arg6 >= balanceOf[address(arg4)][address(msg.sender)]
                    balanceOf[address(arg4)][address(msg.sender)] += arg6
                    emit Transfer(msg.sender, arg6, arg4, arg2);
                    allowance[address(arg4)][address(arg2)][address(arg3)] = arg5
                    emit Approval(address(arg3), arg5, arg2, arg4);
                    idx = 0
                    while idx < arg1.length:
                        mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 516] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    require ext_code.size(arg3)
                    call arg3.0x8f4ffcb1 with:
                         gas gas_remaining wei
                        args address(arg2), arg5, address(arg4), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 516 len arg1.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
                delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
                     gas gas_remaining wei
                    args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, _1967), Array(len=arg9.length, data=arg9[all])
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg2 == address(delegate.return_data[0])
                require ext_code.size(stor3)
                call stor3.getMiningKing() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == address(ext_call.return_data[0])
            require block.number <= arg7
            signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967] = 1
            require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967]
            allowance[address(arg4)][address(arg2)][address(msg.sender)] = arg6
            emit Approval(msg.sender, arg6, arg2, arg4);
            require arg6 <= balanceOf[address(arg4)][address(arg2)]
            balanceOf[address(arg4)][address(arg2)] -= arg6
            require arg6 <= allowance[address(arg4)][address(arg2)][address(msg.sender)]
            allowance[address(arg4)][address(arg2)][address(msg.sender)] -= arg6
            require balanceOf[address(arg4)][address(msg.sender)] + arg6 >= balanceOf[address(arg4)][address(msg.sender)]
            balanceOf[address(arg4)][address(msg.sender)] += arg6
            emit Transfer(msg.sender, arg6, arg4, arg2);
            allowance[address(arg4)][address(arg2)][address(arg3)] = arg5
            emit Approval(address(arg3), arg5, arg2, arg4);
            require ext_code.size(arg3)
            call arg3.0x8f4ffcb1 with:
                 gas gas_remaining wei
                args address(arg2), arg5, address(arg4), Array(len=arg1.length, data=arg1[all])
        else:
            idx = 0
            while idx < arg1.length:
                require idx < 12
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) == Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 256]):
                    idx = idx + 1
                    continue 
                mem[64] = ceil32(arg1.length) + ceil32(arg9.length) + 352
                mem[ceil32(arg1.length) + ceil32(arg9.length) + 288] = 11
                mem[ceil32(arg1.length) + ceil32(arg9.length) + 320] = 'kingApprove'
                if arg1.length != 11:
                    idx = 0
                    while idx < arg9.length:
                        mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 452] = mem[ceil32(arg1.length) + idx + 160]
                        idx = idx + 32
                        continue 
                    require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
                    delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
                         gas gas_remaining wei
                        args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, _1967), Array(len=arg9.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 452 len arg9.length])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg2 == address(delegate.return_data[0])
                    require ext_code.size(stor3)
                    call stor3.getMiningKing() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    idx = 0
                    while idx < arg1.length:
                        require idx < 11
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) == Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 320]):
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < arg9.length:
                            mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 452] = mem[ceil32(arg1.length) + idx + 160]
                            idx = idx + 32
                            continue 
                        require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
                        delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, _1967), Array(len=arg9.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 452 len arg9.length])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg2 == address(delegate.return_data[0])
                        require ext_code.size(stor3)
                        call stor3.getMiningKing() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require block.number <= arg7
                        signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967] = 1
                        require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967]
                        allowance[address(arg4)][address(arg2)][address(msg.sender)] = arg6
                        emit Approval(msg.sender, arg6, arg2, arg4);
                        require arg6 <= balanceOf[address(arg4)][address(arg2)]
                        balanceOf[address(arg4)][address(arg2)] -= arg6
                        require arg6 <= allowance[address(arg4)][address(arg2)][address(msg.sender)]
                        allowance[address(arg4)][address(arg2)][address(msg.sender)] -= arg6
                        require balanceOf[address(arg4)][address(msg.sender)] + arg6 >= balanceOf[address(arg4)][address(msg.sender)]
                        balanceOf[address(arg4)][address(msg.sender)] += arg6
                        emit Transfer(msg.sender, arg6, arg4, arg2);
                        allowance[address(arg4)][address(arg2)][address(arg3)] = arg5
                        emit Approval(address(arg3), arg5, arg2, arg4);
                        idx = 0
                        while idx < arg1.length:
                            mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 516] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(arg3)
                        call arg3.0x8f4ffcb1 with:
                             gas gas_remaining wei
                            args address(arg2), arg5, address(arg4), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 516 len arg1.length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < arg9.length:
                        mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 452] = mem[ceil32(arg1.length) + idx + 160]
                        idx = idx + 32
                        continue 
                    require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
                    delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
                         gas gas_remaining wei
                        args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, _1967), Array(len=arg9.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 452 len arg9.length])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg2 == address(delegate.return_data[0])
                    require ext_code.size(stor3)
                    call stor3.getMiningKing() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.sender == address(ext_call.return_data[0])
                require block.number <= arg7
                signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967] = 1
                require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967]
                allowance[address(arg4)][address(arg2)][address(msg.sender)] = arg6
                emit Approval(msg.sender, arg6, arg2, arg4);
                require arg6 <= balanceOf[address(arg4)][address(arg2)]
                balanceOf[address(arg4)][address(arg2)] -= arg6
                require arg6 <= allowance[address(arg4)][address(arg2)][address(msg.sender)]
                allowance[address(arg4)][address(arg2)][address(msg.sender)] -= arg6
                require balanceOf[address(arg4)][address(msg.sender)] + arg6 >= balanceOf[address(arg4)][address(msg.sender)]
                balanceOf[address(arg4)][address(msg.sender)] += arg6
                emit Transfer(msg.sender, arg6, arg4, arg2);
                allowance[address(arg4)][address(arg2)][address(arg3)] = arg5
                emit Approval(address(arg3), arg5, arg2, arg4);
                idx = 0
                while idx < arg1.length:
                    mem[ceil32(arg1.length) + ceil32(arg9.length) + idx + 516] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                require ext_code.size(arg3)
                call arg3.0x8f4ffcb1 with:
                     gas gas_remaining wei
                    args address(arg2), arg5, address(arg4), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg9.length) + 516 len arg1.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg9.length) + 388 len ceil32(arg9.length)] = arg9[all], mem[ceil32(arg1.length) + arg9.length + 160 len ceil32(arg9.length) - arg9.length]
            require ext_code.size(0xf532bd0ef20914ea1f78763f0e22495b326ee3a2)
            delegate 0xf532bd0ef20914ea1f78763f0e22495b326ee3a2.recover(bytes32 arg1, bytes arg2) with:
                 gas gas_remaining wei
                args sha3(0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37, _1967), Array(len=arg9.length, data=arg9[all])
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg2 == address(delegate.return_data[0])
            require ext_code.size(stor3)
            call stor3.getMiningKing() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == address(ext_call.return_data[0])
            require block.number <= arg7
            signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967] = 1
            require not signatureBurnStatus[0x8fd4f9177556bbc74d0710c8bdda543afd18cc84d92d64b5620d5f1881dceb37][_1967]
            allowance[address(arg4)][address(arg2)][address(msg.sender)] = arg6
            emit Approval(msg.sender, arg6, arg2, arg4);
            require arg6 <= balanceOf[address(arg4)][address(arg2)]
            balanceOf[address(arg4)][address(arg2)] -= arg6
            require arg6 <= allowance[address(arg4)][address(arg2)][address(msg.sender)]
            allowance[address(arg4)][address(arg2)][address(msg.sender)] -= arg6
            require balanceOf[address(arg4)][address(msg.sender)] + arg6 >= balanceOf[address(arg4)][address(msg.sender)]
            balanceOf[address(arg4)][address(msg.sender)] += arg6
            emit Transfer(msg.sender, arg6, arg4, arg2);
            allowance[address(arg4)][address(arg2)][address(arg3)] = arg5
            emit Approval(address(arg3), arg5, arg2, arg4);
            mem[ceil32(arg1.length) + ceil32(arg9.length) + 292] = arg2
            mem[ceil32(arg1.length) + ceil32(arg9.length) + 324] = arg5
            mem[ceil32(arg1.length) + ceil32(arg9.length) + 356] = arg4
            mem[ceil32(arg1.length) + ceil32(arg9.length) + 388] = 128
            mem[ceil32(arg1.length) + ceil32(arg9.length) + 420] = arg1.length
            mem[ceil32(arg1.length) + ceil32(arg9.length) + 452 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                require ext_code.size(arg3)
                call arg3.0x8f4ffcb1 with:
                     gas gas_remaining wei
                    args mem[ceil32(arg1.length) + ceil32(arg9.length) + 292 len arg1.length + 12], arg7, arg8, mem[ceil32(arg1.length) + ceil32(arg9.length) + arg1.length + 368 len 84]
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg9.length) + 452] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg9.length) + -(arg1.length % 32) + 484 len arg1.length % 32]
                require ext_code.size(arg3)
                call arg3.0x8f4ffcb1 with:
                     gas gas_remaining wei
                    args mem[ceil32(arg1.length) + ceil32(arg9.length) + 292 len arg1.length + 12], arg7, arg8, mem[ceil32(arg1.length) + ceil32(arg9.length) + arg1.length + 368 len -(arg1.length % 32) + 116]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
