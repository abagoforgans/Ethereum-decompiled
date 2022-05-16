contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint256 balanceOf;
mapping of uint256 tokenAllowance;
mapping of uint256 signatureBurnStatus;

function signatureBurnStatus(bytes32 arg1) {
    return signatureBurnStatus[arg1]
}

function owner() {
    return owner
}

function tokenAllowance(address arg1, address arg2, address arg3) {
    return tokenAllowance[address(arg1)][address(arg2)][address(arg3)]
}

function newOwner() {
    return newOwner
}

function balanceOf(address arg1, address arg2) {
    return balanceOf[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approveTokens(address arg1, address arg2, uint256 arg3) {
    tokenAllowance[address(arg2)][address(msg.sender)][address(arg1)] = arg3
    emit Approval(address(arg1), arg3, msg.sender, arg2);
    return 1
}

function getLavaTypedDataHash(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    return sha3(0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3, sha3(address(arg1), uint64(arg2), this.address, arg3, arg4, arg5, arg6, arg7))
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferTokens(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg2)][address(msg.sender)]
    balanceOf[address(arg2)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)][address(arg1)] + arg3 >= balanceOf[address(arg2)][address(arg1)]
    balanceOf[address(arg2)][address(arg1)] += arg3
    emit Transfer(address(arg1), arg3, msg.sender, arg2);
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
    emit Withdraw(address(arg1), msg.sender, arg2, balanceOf[address(arg1)][address(msg.sender)]);
}

function transferTokensFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require arg4 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg4
    require arg4 <= tokenAllowance[address(arg3)][address(arg1)][address(arg2)]
    tokenAllowance[address(arg3)][address(arg1)][address(arg2)] -= arg4
    require balanceOf[address(arg3)][address(arg2)] + arg4 >= balanceOf[address(arg3)][address(arg2)]
    balanceOf[address(arg3)][address(arg2)] += arg4
    emit Transfer(address(arg2), arg4, arg3, arg1);
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
    require balanceOf[address(arg3)][address(arg1)] + arg2 >= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] += arg2
    emit Deposit(address(arg3), address(arg1), arg2, balanceOf[address(arg3)][address(arg1)]);
    return 1
}

function withdrawTokensFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require arg4 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg4
    require arg4 <= tokenAllowance[address(arg3)][address(arg1)][address(arg2)]
    tokenAllowance[address(arg3)][address(arg1)][address(arg2)] -= arg4
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(address(arg3), address(arg1), arg4, balanceOf[address(arg3)][address(arg1)]);
    return 1
}

function burnSignature(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8) {
    require ext_code.size(0x61388904afac03beb15173340dfe3e634fcd7c16)
    delegate 0x61388904afac03beb15173340dfe3e634fcd7c16.recover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3, sha3(arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)), Array(len=arg8.length, data=arg8[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20] == arg1
    signatureBurnStatus[0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3][sha3(arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)] = 2
    require not signatureBurnStatus[0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3][sha3(arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)]
    return 1
}

function approveTokensWithSignature(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8) {
    require ext_code.size(0x61388904afac03beb15173340dfe3e634fcd7c16)
    delegate 0x61388904afac03beb15173340dfe3e634fcd7c16.recover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3, sha3(arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)), Array(len=arg8.length, data=arg8[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == delegate.return_data[12 len 20]
    require block.number <= arg6
    signatureBurnStatus[0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3][sha3(arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)] = 1
    require not signatureBurnStatus[0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3][sha3(arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)]
    tokenAllowance[address(arg3)][address(arg1)][address(msg.sender)] = arg5
    emit Approval(msg.sender, arg5, arg1, arg3);
    require arg5 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg5
    require arg5 <= tokenAllowance[address(arg3)][address(arg1)][address(msg.sender)]
    tokenAllowance[address(arg3)][address(arg1)][address(msg.sender)] -= arg5
    require balanceOf[address(arg3)][address(msg.sender)] + arg5 >= balanceOf[address(arg3)][address(msg.sender)]
    balanceOf[address(arg3)][address(msg.sender)] += arg5
    emit Transfer(msg.sender, arg5, arg3, arg1);
    tokenAllowance[address(arg3)][address(arg1)][address(arg2)] = arg4
    emit Approval(address(arg2), arg4, arg1, arg3);
    return 1
}

function approveAndCall(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8, bytes arg9) {
    require ext_code.size(0x61388904afac03beb15173340dfe3e634fcd7c16)
    delegate 0x61388904afac03beb15173340dfe3e634fcd7c16.recover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3, sha3(arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)), Array(len=arg8.length, data=arg8[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == delegate.return_data[12 len 20]
    require block.number <= arg6
    signatureBurnStatus[0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3][sha3(arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)] = 1
    require not signatureBurnStatus[0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3][sha3(arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)]
    tokenAllowance[address(arg3)][address(arg1)][address(msg.sender)] = arg5
    emit Approval(msg.sender, arg5, arg1, arg3);
    require arg5 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg5
    require arg5 <= tokenAllowance[address(arg3)][address(arg1)][address(msg.sender)]
    tokenAllowance[address(arg3)][address(arg1)][address(msg.sender)] -= arg5
    require balanceOf[address(arg3)][address(msg.sender)] + arg5 >= balanceOf[address(arg3)][address(msg.sender)]
    balanceOf[address(arg3)][address(msg.sender)] += arg5
    emit Transfer(msg.sender, arg5, arg3, arg1);
    tokenAllowance[address(arg3)][address(arg1)][address(arg2)] = arg4
    emit Approval(address(arg2), arg4, arg1, arg3);
    require ext_code.size(arg2)
    call arg2.0x8f4ffcb1 with:
         gas gas_remaining wei
        args address(arg1), arg4, address(arg3), Array(len=arg9.length, data=arg9[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferTokensFromWithSignature(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8) {
    require ext_code.size(0x61388904afac03beb15173340dfe3e634fcd7c16)
    delegate 0x61388904afac03beb15173340dfe3e634fcd7c16.recover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3, sha3(arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)), Array(len=arg8.length, data=arg8[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == delegate.return_data[12 len 20]
    require block.number <= arg6
    signatureBurnStatus[0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3][sha3(arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)] = 1
    require not signatureBurnStatus[0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3][sha3(arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)]
    tokenAllowance[address(arg3)][address(arg1)][address(msg.sender)] = arg5
    emit Approval(msg.sender, arg5, arg1, arg3);
    require arg5 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg5
    require arg5 <= tokenAllowance[address(arg3)][address(arg1)][address(msg.sender)]
    tokenAllowance[address(arg3)][address(arg1)][address(msg.sender)] -= arg5
    require balanceOf[address(arg3)][address(msg.sender)] + arg5 >= balanceOf[address(arg3)][address(msg.sender)]
    balanceOf[address(arg3)][address(msg.sender)] += arg5
    emit Transfer(msg.sender, arg5, arg3, arg1);
    tokenAllowance[address(arg3)][address(arg1)][address(arg2)] = arg4
    emit Approval(address(arg2), arg4, arg1, arg3);
    require arg4 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg4
    require arg4 <= tokenAllowance[address(arg3)][address(arg1)][address(arg2)]
    tokenAllowance[address(arg3)][address(arg1)][address(arg2)] -= arg4
    require balanceOf[address(arg3)][address(arg2)] + arg4 >= balanceOf[address(arg3)][address(arg2)]
    balanceOf[address(arg3)][address(arg2)] += arg4
    emit Transfer(address(arg2), arg4, arg3, arg1);
    return 1
}

function withdrawTokensFromWithSignature(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes arg8) {
    require ext_code.size(0x61388904afac03beb15173340dfe3e634fcd7c16)
    delegate 0x61388904afac03beb15173340dfe3e634fcd7c16.recover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args sha3(0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3, sha3(arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)), Array(len=arg8.length, data=arg8[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == delegate.return_data[12 len 20]
    require block.number <= arg6
    signatureBurnStatus[0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3][sha3(arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)] = 1
    require not signatureBurnStatus[0x313236b6cd8d12125421e44528d8f5ba070a781aeac3e5ae45e314b818734ec3][sha3(arg1, arg2, this.address, arg3, arg4, arg5, arg6, arg7)]
    tokenAllowance[address(arg3)][address(arg1)][address(msg.sender)] = arg5
    emit Approval(msg.sender, arg5, arg1, arg3);
    require arg5 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg5
    require arg5 <= tokenAllowance[address(arg3)][address(arg1)][address(msg.sender)]
    tokenAllowance[address(arg3)][address(arg1)][address(msg.sender)] -= arg5
    require balanceOf[address(arg3)][address(msg.sender)] + arg5 >= balanceOf[address(arg3)][address(msg.sender)]
    balanceOf[address(arg3)][address(msg.sender)] += arg5
    emit Transfer(msg.sender, arg5, arg3, arg1);
    tokenAllowance[address(arg3)][address(arg1)][address(arg2)] = arg4
    emit Approval(address(arg2), arg4, arg1, arg3);
    require arg4 <= balanceOf[address(arg3)][address(arg1)]
    balanceOf[address(arg3)][address(arg1)] -= arg4
    require arg4 <= tokenAllowance[address(arg3)][address(arg1)][address(arg2)]
    tokenAllowance[address(arg3)][address(arg1)][address(arg2)] -= arg4
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(address(arg3), address(arg1), arg4, balanceOf[address(arg3)][address(arg1)]);
    return 1
}



}
