contract main {




// =====================  Runtime code  =====================


address validatorAddress;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor4; offset 160
address owner;
address whiteListingContractAddress;
mapping of struct pendingTransactions;
mapping of uint256 pendingApprovalAmount;
uint256 currentNonce;
uint256 transferFee;
address feeRecipientAddress;

function mintingFinished() {
    return bool(stor4)
}

function totalSupply() {
    return totalSupply
}

function pendingApprovalAmount(address arg1, address arg2) {
    return pendingApprovalAmount[arg1][arg2]
}

function validator() {
    return validatorAddress
}

function feeRecipient() {
    return feeRecipientAddress
}

function pendingTransactions(uint256 arg1) {
    return pendingTransactions[arg1].field_0, 
           pendingTransactions[arg1].field_256,
           pendingTransactions[arg1].field_512,
           pendingTransactions[arg1].field_768,
           pendingTransactions[arg1].field_1024
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function transferFee() {
    return transferFee
}

function currentNonce() {
    return currentNonce
}

function whiteListingContract() {
    return whiteListingContractAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function finishMinting() {
    require owner == msg.sender
    require not stor4
    stor4 = 1
    emit MintFinished()
    return 1
}

function setFee(uint256 arg1) {
    require validatorAddress == msg.sender
    emit FeeSet(transferFee, arg1);
    transferFee = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setNewValidator(address arg1) {
    require validatorAddress == msg.sender
    require arg1
    emit NewValidatorSet(validatorAddress, arg1);
    validatorAddress = arg1
}

function setWhitelistContract(address arg1) {
    require validatorAddress == msg.sender
    require arg1
    whiteListingContractAddress = arg1
    emit WhiteListingContractSet(arg1);
}

function setFeeRecipient(address arg1) {
    require validatorAddress == msg.sender
    require arg1
    emit FeeRecipientSet(feeRecipientAddress, arg1);
    feeRecipientAddress = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor4
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function rejectTransfer(uint256 arg1, uint256 arg2) {
    require validatorAddress == msg.sender
    require pendingTransactions[arg1].field_0
    require pendingTransactions[arg1].field_512 <= pendingApprovalAmount[stor6[arg1].field_0][stor6[arg1].field_1024]
    if pendingTransactions[arg1].field_0 == feeRecipientAddress:
        pendingApprovalAmount[stor6[arg1].field_0][stor6[arg1].field_1024] -= pendingTransactions[arg1].field_512
    else:
        require pendingTransactions[arg1].field_768 <= pendingApprovalAmount[stor6[arg1].field_0][stor6[arg1].field_1024] - pendingTransactions[arg1].field_512
        pendingApprovalAmount[stor6[arg1].field_0][stor6[arg1].field_1024] = pendingApprovalAmount[stor6[arg1].field_0][stor6[arg1].field_1024] - pendingTransactions[arg1].field_512 - pendingTransactions[arg1].field_768
    emit TransferRejected(pendingTransactions[arg1].field_512, arg2, pendingTransactions[arg1].field_0, pendingTransactions[arg1].field_256, arg1);
    pendingTransactions[arg1].field_0 = 0
    pendingTransactions[arg1].field_256 = 0
    pendingTransactions[arg1].field_512 = 0
    pendingTransactions[arg1].field_768 = 0
    pendingTransactions[arg1].field_1024 = 0
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(whiteListingContractAddress)
    call whiteListingContractAddress.isInvestorApproved(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(whiteListingContractAddress)
    call whiteListingContractAddress.isInvestorApproved(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 > 0
    require pendingApprovalAmount[address(msg.sender)][0] + arg2 >= arg2
    if feeRecipientAddress == msg.sender:
        require pendingApprovalAmount[address(msg.sender)][0] + arg2 <= balanceOf[address(msg.sender)]
        require arg2 + pendingApprovalAmount[address(msg.sender)][0] >= pendingApprovalAmount[address(msg.sender)][0]
        pendingApprovalAmount[address(msg.sender)][0] += arg2
    else:
        require transferFee >= 0
        require transferFee + pendingApprovalAmount[address(msg.sender)][0] + arg2 <= balanceOf[address(msg.sender)]
        require arg2 + pendingApprovalAmount[address(msg.sender)][0] >= pendingApprovalAmount[address(msg.sender)][0]
        require transferFee >= 0
        pendingApprovalAmount[address(msg.sender)][0] = transferFee + arg2 + pendingApprovalAmount[address(msg.sender)][0]
    pendingTransactions[stor8].field_0 = msg.sender
    pendingTransactions[stor8].field_256 = arg1
    pendingTransactions[stor8].field_512 = arg2
    pendingTransactions[stor8].field_768 = transferFee
    pendingTransactions[stor8].field_1024 = 0
    emit RecordedPendingTransaction(arg2, transferFee, msg.sender, arg1, 0);
    currentNonce++
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(whiteListingContractAddress)
    call whiteListingContractAddress.isInvestorApproved(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(whiteListingContractAddress)
    call whiteListingContractAddress.isInvestorApproved(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg3 > 0
    require pendingApprovalAmount[address(arg1)][address(msg.sender)] + arg3 >= arg3
    if feeRecipientAddress == arg1:
        require pendingApprovalAmount[address(arg1)][address(msg.sender)] + arg3 <= balanceOf[address(arg1)]
        require pendingApprovalAmount[address(arg1)][address(msg.sender)] + arg3 >= arg3
        require pendingApprovalAmount[address(arg1)][address(msg.sender)] + arg3 <= allowance[address(arg1)][address(msg.sender)]
        require arg3 + pendingApprovalAmount[address(arg1)][address(msg.sender)] >= pendingApprovalAmount[address(arg1)][address(msg.sender)]
        pendingApprovalAmount[address(arg1)][address(msg.sender)] += arg3
    else:
        require transferFee >= 0
        require transferFee + pendingApprovalAmount[address(arg1)][address(msg.sender)] + arg3 <= balanceOf[address(arg1)]
        require pendingApprovalAmount[address(arg1)][address(msg.sender)] + arg3 >= arg3
        require transferFee >= 0
        require transferFee + pendingApprovalAmount[address(arg1)][address(msg.sender)] + arg3 <= allowance[address(arg1)][address(msg.sender)]
        require arg3 + pendingApprovalAmount[address(arg1)][address(msg.sender)] >= pendingApprovalAmount[address(arg1)][address(msg.sender)]
        require transferFee >= 0
        pendingApprovalAmount[address(arg1)][address(msg.sender)] = transferFee + arg3 + pendingApprovalAmount[address(arg1)][address(msg.sender)]
    pendingTransactions[stor8].field_0 = arg1
    pendingTransactions[stor8].field_256 = arg2
    pendingTransactions[stor8].field_512 = arg3
    pendingTransactions[stor8].field_768 = transferFee
    pendingTransactions[stor8].field_1024 = msg.sender
    emit RecordedPendingTransaction(arg3, transferFee, arg1, arg2, msg.sender);
    currentNonce++
    return 1
}

function approveTransfer(uint256 arg1) {
    require msg.sender == validatorAddress
    require ext_code.size(whiteListingContractAddress)
    call whiteListingContractAddress.isInvestorApproved(address arg1) with:
         gas gas_remaining wei
        args pendingTransactions[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(whiteListingContractAddress)
    call whiteListingContractAddress.isInvestorApproved(address arg1) with:
         gas gas_remaining wei
        args pendingTransactions[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require pendingTransactions[arg1].field_512 > 0
    pendingTransactions[arg1].field_0 = 0
    pendingTransactions[arg1].field_256 = 0
    pendingTransactions[arg1].field_512 = 0
    pendingTransactions[arg1].field_768 = 0
    pendingTransactions[arg1].field_1024 = 0
    if pendingTransactions[arg1].field_0 == feeRecipientAddress:
        require pendingTransactions[arg1].field_512 <= balanceOf[stor6[arg1].field_0]
        require pendingTransactions[arg1].field_512 + balanceOf[stor6[arg1].field_256] >= balanceOf[stor6[arg1].field_256]
        if not pendingTransactions[arg1].field_1024:
            require pendingTransactions[arg1].field_512 <= pendingApprovalAmount[stor6[arg1].field_0][stor6[arg1].field_1024]
            emit TransferWithFee(pendingTransactions[arg1].field_512, 0, pendingTransactions[arg1].field_0, pendingTransactions[arg1].field_256);
            emit Transfer(pendingTransactions[arg1].field_512, pendingTransactions[arg1].field_0, pendingTransactions[arg1].field_256);
            balanceOf[stor6[arg1].field_0] -= pendingTransactions[arg1].field_512
            balanceOf[stor6[arg1].field_256] += pendingTransactions[arg1].field_512
        else:
            require pendingTransactions[arg1].field_512 <= allowance[stor6[arg1].field_0][stor6[arg1].field_1024]
            require pendingTransactions[arg1].field_512 <= pendingApprovalAmount[stor6[arg1].field_0][stor6[arg1].field_1024]
            emit TransferWithFee(pendingTransactions[arg1].field_512, 0, pendingTransactions[arg1].field_0, pendingTransactions[arg1].field_256);
            emit Transfer(pendingTransactions[arg1].field_512, pendingTransactions[arg1].field_0, pendingTransactions[arg1].field_256);
            balanceOf[stor6[arg1].field_0] -= pendingTransactions[arg1].field_512
            balanceOf[stor6[arg1].field_256] += pendingTransactions[arg1].field_512
            allowance[stor6[arg1].field_0][stor6[arg1].field_1024] -= pendingTransactions[arg1].field_512
        pendingApprovalAmount[stor6[arg1].field_0][stor6[arg1].field_1024] -= pendingTransactions[arg1].field_512
    else:
        require pendingTransactions[arg1].field_768 + pendingTransactions[arg1].field_512 >= pendingTransactions[arg1].field_512
        require pendingTransactions[arg1].field_768 + pendingTransactions[arg1].field_512 <= balanceOf[stor6[arg1].field_0]
        require pendingTransactions[arg1].field_512 + balanceOf[stor6[arg1].field_256] >= balanceOf[stor6[arg1].field_256]
        require pendingTransactions[arg1].field_768 + balanceOf[stor10] >= balanceOf[stor10]
        balanceOf[stor10] += pendingTransactions[arg1].field_768
        if not pendingTransactions[arg1].field_1024:
            require pendingTransactions[arg1].field_512 <= pendingApprovalAmount[stor6[arg1].field_0][stor6[arg1].field_1024]
            require pendingTransactions[arg1].field_768 <= pendingApprovalAmount[stor6[arg1].field_0][stor6[arg1].field_1024] - pendingTransactions[arg1].field_512
            emit TransferWithFee(pendingTransactions[arg1].field_512, pendingTransactions[arg1].field_768, pendingTransactions[arg1].field_0, pendingTransactions[arg1].field_256);
            emit Transfer(pendingTransactions[arg1].field_512, pendingTransactions[arg1].field_0, pendingTransactions[arg1].field_256);
            balanceOf[stor6[arg1].field_0] = balanceOf[stor6[arg1].field_0] - pendingTransactions[arg1].field_768 - pendingTransactions[arg1].field_512
            balanceOf[stor6[arg1].field_256] += pendingTransactions[arg1].field_512
        else:
            require pendingTransactions[arg1].field_512 <= allowance[stor6[arg1].field_0][stor6[arg1].field_1024]
            require pendingTransactions[arg1].field_768 <= allowance[stor6[arg1].field_0][stor6[arg1].field_1024] - pendingTransactions[arg1].field_512
            require pendingTransactions[arg1].field_512 <= pendingApprovalAmount[stor6[arg1].field_0][stor6[arg1].field_1024]
            require pendingTransactions[arg1].field_768 <= pendingApprovalAmount[stor6[arg1].field_0][stor6[arg1].field_1024] - pendingTransactions[arg1].field_512
            emit TransferWithFee(pendingTransactions[arg1].field_512, pendingTransactions[arg1].field_768, pendingTransactions[arg1].field_0, pendingTransactions[arg1].field_256);
            emit Transfer(pendingTransactions[arg1].field_512, pendingTransactions[arg1].field_0, pendingTransactions[arg1].field_256);
            balanceOf[stor6[arg1].field_0] = balanceOf[stor6[arg1].field_0] - pendingTransactions[arg1].field_768 - pendingTransactions[arg1].field_512
            balanceOf[stor6[arg1].field_256] += pendingTransactions[arg1].field_512
            allowance[stor6[arg1].field_0][stor6[arg1].field_1024] = allowance[stor6[arg1].field_0][stor6[arg1].field_1024] - pendingTransactions[arg1].field_512 - pendingTransactions[arg1].field_768
        pendingApprovalAmount[stor6[arg1].field_0][stor6[arg1].field_1024] = pendingApprovalAmount[stor6[arg1].field_0][stor6[arg1].field_1024] - pendingTransactions[arg1].field_512 - pendingTransactions[arg1].field_768
    return 1
}



}
