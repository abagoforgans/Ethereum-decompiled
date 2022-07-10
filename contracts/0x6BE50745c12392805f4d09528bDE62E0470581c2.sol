contract main {




// =====================  Runtime code  =====================


address validatorAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor7; offset 160
address owner;
address whiteListingContractAddress;
mapping of struct pendingTransactions;
mapping of uint256 pendingApprovalAmount;
uint256 currentNonce;
uint256 transferFee;
uint8 sub_b3a5829d; offset 160
address feeRecipientAddress;

function mintingFinished() {
    return bool(stor7)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function pendingApprovalAmount(address arg1, address arg2) {
    return pendingApprovalAmount[arg1][arg2]
}

function decimals() {
    return decimals
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

function symbol() {
    return symbol[0 len symbol.length]
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

function sub_b3a5829d(?) {
    return bool(sub_b3a5829d)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function activateTokenSwitch() {
    require msg.sender == validatorAddress
    sub_b3a5829d = 1
    emit TokenSwitchActivated()
}

function finishMinting() {
    require msg.sender == owner
    require not stor7
    stor7 = 1
    emit MintFinished()
    return 1
}

function deactivateTokenSwitch() {
    require msg.sender == validatorAddress
    sub_b3a5829d = 0
    emit TokenSwitchDeactivated()
}

function setFee(uint256 arg1) {
    require msg.sender == validatorAddress
    emit FeeSet(transferFee, arg1);
    transferFee = arg1
}

function updateName(string arg1) {
    require msg.sender == owner
    require arg1.length
    name[] = Array(len=arg1.length, data=arg1[all])
}

function updateSymbol(string arg1) {
    require msg.sender == owner
    require arg1.length
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setNewValidator(address arg1) {
    require msg.sender == validatorAddress
    require arg1
    emit NewValidatorSet(validatorAddress, arg1);
    validatorAddress = arg1
}

function setWhitelistContract(address arg1) {
    require msg.sender == validatorAddress
    require arg1
    whiteListingContractAddress = arg1
    emit WhiteListingContractSet(arg1);
}

function setFeeRecipient(address arg1) {
    require msg.sender == validatorAddress
    require arg1
    emit FeeRecipientSet(feeRecipientAddress, arg1);
    feeRecipientAddress = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor7
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function rejectTransfer(uint256 arg1, uint256 arg2) {
    require msg.sender == validatorAddress
    require pendingTransactions[arg1].field_0
    require pendingTransactions[arg1].field_512 <= pendingApprovalAmount[stor9[arg1].field_0][stor9[arg1].field_1024]
    if not pendingTransactions[arg1].field_768:
        pendingApprovalAmount[stor9[arg1].field_0][stor9[arg1].field_1024] -= pendingTransactions[arg1].field_512
    else:
        require pendingTransactions[arg1].field_768 <= pendingApprovalAmount[stor9[arg1].field_0][stor9[arg1].field_1024] - pendingTransactions[arg1].field_512
        pendingApprovalAmount[stor9[arg1].field_0][stor9[arg1].field_1024] = pendingApprovalAmount[stor9[arg1].field_0][stor9[arg1].field_1024] - pendingTransactions[arg1].field_512 - pendingTransactions[arg1].field_768
    emit TransferRejected(pendingTransactions[arg1].field_512, arg2, pendingTransactions[arg1].field_0, pendingTransactions[arg1].field_256, arg1);
    pendingTransactions[arg1].field_0 = 0
    pendingTransactions[arg1].field_256 = 0
    pendingTransactions[arg1].field_512 = 0
    pendingTransactions[arg1].field_768 = 0
    pendingTransactions[arg1].field_1024 = 0
}

function bulkRejectTransfers(uint256[] arg1, uint256[] arg2) {
    require msg.sender == validatorAddress
    require arg2.length == arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_0
        require pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512 <= pendingApprovalAmount[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024]
        if not pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768:
            pendingApprovalAmount[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024] -= pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512
        else:
            require pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768 <= pendingApprovalAmount[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024] - pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512
            pendingApprovalAmount[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024] = pendingApprovalAmount[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024] - pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512 - pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768
        mem[96] = pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512
        mem[128] = cd[((32 * idx) + arg2 + 36)]
        emit TransferRejected(pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512, cd[((32 * idx) + arg2 + 36)], pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_0, pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_256, cd[((32 * idx) + arg1 + 36)]);
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 9
        pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
        pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_256 = 0
        pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512 = 0
        pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768 = 0
        pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_1024 = 0
        idx = idx + 1
        continue 
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
    if sub_b3a5829d:
        require arg1
        require arg2 <= balanceOf[msg.sender]
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require pendingApprovalAmount[msg.sender][0] + arg2 >= arg2
        if feeRecipientAddress == msg.sender:
            require pendingApprovalAmount[msg.sender][0] + arg2 <= balanceOf[msg.sender]
            require arg2 + pendingApprovalAmount[msg.sender][0] >= pendingApprovalAmount[msg.sender][0]
            pendingApprovalAmount[msg.sender][0] += arg2
            pendingTransactions[stor11].field_0 = msg.sender
            pendingTransactions[stor11].field_256 = arg1
            pendingTransactions[stor11].field_512 = arg2
            pendingTransactions[stor11].field_768 = 0
            pendingTransactions[stor11].field_1024 = 0
            emit RecordedPendingTransaction(arg2, 0, currentNonce, msg.sender, arg1, 0);
        else:
            require transferFee >= 0
            require transferFee + pendingApprovalAmount[msg.sender][0] + arg2 <= balanceOf[msg.sender]
            require arg2 + pendingApprovalAmount[msg.sender][0] >= pendingApprovalAmount[msg.sender][0]
            require transferFee >= 0
            pendingApprovalAmount[msg.sender][0] = transferFee + arg2 + pendingApprovalAmount[msg.sender][0]
            pendingTransactions[stor11].field_0 = msg.sender
            pendingTransactions[stor11].field_256 = arg1
            pendingTransactions[stor11].field_512 = arg2
            pendingTransactions[stor11].field_768 = transferFee
            pendingTransactions[stor11].field_1024 = 0
            emit RecordedPendingTransaction(arg2, transferFee, currentNonce, msg.sender, arg1, 0);
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
    if sub_b3a5829d:
        require arg2
        require arg3 <= balanceOf[address(arg1)]
        require arg3 <= allowance[address(arg1)][msg.sender]
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require arg3 + balanceOf[arg2] >= balanceOf[arg2]
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        require arg3 <= allowance[address(arg1)][msg.sender]
        allowance[address(arg1)][msg.sender] -= arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        require pendingApprovalAmount[address(arg1)][msg.sender] + arg3 >= arg3
        if feeRecipientAddress == arg1:
            require pendingApprovalAmount[address(arg1)][msg.sender] + arg3 <= balanceOf[address(arg1)]
            require pendingApprovalAmount[address(arg1)][msg.sender] + arg3 >= arg3
            require pendingApprovalAmount[address(arg1)][msg.sender] + arg3 <= allowance[address(arg1)][msg.sender]
            require arg3 + pendingApprovalAmount[address(arg1)][msg.sender] >= pendingApprovalAmount[address(arg1)][msg.sender]
            pendingApprovalAmount[address(arg1)][msg.sender] += arg3
            pendingTransactions[stor11].field_0 = arg1
            pendingTransactions[stor11].field_256 = arg2
            pendingTransactions[stor11].field_512 = arg3
            pendingTransactions[stor11].field_768 = 0
            pendingTransactions[stor11].field_1024 = msg.sender
            emit RecordedPendingTransaction(arg3, 0, currentNonce, arg1, arg2, msg.sender);
        else:
            require transferFee >= 0
            require transferFee + pendingApprovalAmount[address(arg1)][msg.sender] + arg3 <= balanceOf[address(arg1)]
            require pendingApprovalAmount[address(arg1)][msg.sender] + arg3 >= arg3
            require transferFee >= 0
            require transferFee + pendingApprovalAmount[address(arg1)][msg.sender] + arg3 <= allowance[address(arg1)][msg.sender]
            require arg3 + pendingApprovalAmount[address(arg1)][msg.sender] >= pendingApprovalAmount[address(arg1)][msg.sender]
            require transferFee >= 0
            pendingApprovalAmount[address(arg1)][msg.sender] = transferFee + arg3 + pendingApprovalAmount[address(arg1)][msg.sender]
            pendingTransactions[stor11].field_0 = arg1
            pendingTransactions[stor11].field_256 = arg2
            pendingTransactions[stor11].field_512 = arg3
            pendingTransactions[stor11].field_768 = transferFee
            pendingTransactions[stor11].field_1024 = msg.sender
            emit RecordedPendingTransaction(arg3, transferFee, currentNonce, arg1, arg2, msg.sender);
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
    pendingTransactions[arg1].field_0 = 0
    pendingTransactions[arg1].field_256 = 0
    pendingTransactions[arg1].field_512 = 0
    pendingTransactions[arg1].field_768 = 0
    pendingTransactions[arg1].field_1024 = 0
    if not pendingTransactions[arg1].field_768:
        require pendingTransactions[arg1].field_512 <= balanceOf[stor9[arg1].field_0]
        balanceOf[stor9[arg1].field_0] -= pendingTransactions[arg1].field_512
        require pendingTransactions[arg1].field_512 + balanceOf[stor9[arg1].field_256] >= balanceOf[stor9[arg1].field_256]
        balanceOf[stor9[arg1].field_256] += pendingTransactions[arg1].field_512
        if pendingTransactions[arg1].field_1024:
            require pendingTransactions[arg1].field_512 <= allowance[stor9[arg1].field_0][stor9[arg1].field_1024]
            allowance[stor9[arg1].field_0][stor9[arg1].field_1024] -= pendingTransactions[arg1].field_512
        require pendingTransactions[arg1].field_512 <= pendingApprovalAmount[stor9[arg1].field_0][stor9[arg1].field_1024]
        pendingApprovalAmount[stor9[arg1].field_0][stor9[arg1].field_1024] -= pendingTransactions[arg1].field_512
        emit Transfer(pendingTransactions[arg1].field_512, pendingTransactions[arg1].field_0, pendingTransactions[arg1].field_256);
    else:
        require pendingTransactions[arg1].field_768 + pendingTransactions[arg1].field_512 >= pendingTransactions[arg1].field_512
        require pendingTransactions[arg1].field_768 + pendingTransactions[arg1].field_512 <= balanceOf[stor9[arg1].field_0]
        balanceOf[stor9[arg1].field_0] = balanceOf[stor9[arg1].field_0] - pendingTransactions[arg1].field_768 - pendingTransactions[arg1].field_512
        require pendingTransactions[arg1].field_512 + balanceOf[stor9[arg1].field_256] >= balanceOf[stor9[arg1].field_256]
        balanceOf[stor9[arg1].field_256] += pendingTransactions[arg1].field_512
        require pendingTransactions[arg1].field_768 + balanceOf[stor13] >= balanceOf[stor13]
        balanceOf[stor13] += pendingTransactions[arg1].field_768
        if pendingTransactions[arg1].field_1024:
            require pendingTransactions[arg1].field_512 <= allowance[stor9[arg1].field_0][stor9[arg1].field_1024]
            require pendingTransactions[arg1].field_768 <= allowance[stor9[arg1].field_0][stor9[arg1].field_1024] - pendingTransactions[arg1].field_512
            allowance[stor9[arg1].field_0][stor9[arg1].field_1024] = allowance[stor9[arg1].field_0][stor9[arg1].field_1024] - pendingTransactions[arg1].field_512 - pendingTransactions[arg1].field_768
        require pendingTransactions[arg1].field_512 <= pendingApprovalAmount[stor9[arg1].field_0][stor9[arg1].field_1024]
        require pendingTransactions[arg1].field_768 <= pendingApprovalAmount[stor9[arg1].field_0][stor9[arg1].field_1024] - pendingTransactions[arg1].field_512
        pendingApprovalAmount[stor9[arg1].field_0][stor9[arg1].field_1024] = pendingApprovalAmount[stor9[arg1].field_0][stor9[arg1].field_1024] - pendingTransactions[arg1].field_512 - pendingTransactions[arg1].field_768
        emit TransferWithFee(pendingTransactions[arg1].field_512, pendingTransactions[arg1].field_768, pendingTransactions[arg1].field_0, pendingTransactions[arg1].field_256);
}

function bulkApproveTransfers(uint256[] arg1) {
    require msg.sender == validatorAddress
    idx = 0
    while idx < arg1.length:
        require ext_code.size(whiteListingContractAddress)
        call whiteListingContractAddress.isInvestorApproved(address arg1) with:
             gas gas_remaining wei
            args pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[100] = pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_256
        require ext_code.size(whiteListingContractAddress)
        call whiteListingContractAddress.isInvestorApproved(address arg1) with:
             gas gas_remaining wei
            args pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
        pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_256 = 0
        pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512 = 0
        pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768 = 0
        pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_1024 = 0
        if not pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768:
            require pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512 <= balanceOf[stor9[cd[((32 * idx) + arg1 + 36)]].field_0]
            balanceOf[stor9[cd[((32 * idx) + arg1 + 36)]].field_0] -= pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512
            require pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512 + balanceOf[stor9[cd[((32 * idx) + arg1 + 36)]].field_256] >= balanceOf[stor9[cd[((32 * idx) + arg1 + 36)]].field_256]
            balanceOf[stor9[cd[((32 * idx) + arg1 + 36)]].field_256] += pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512
            if pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_1024:
                require pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512 <= allowance[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024]
                allowance[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024] -= pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512
            require pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512 <= pendingApprovalAmount[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024]
            mem[32] = sha3(pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_0, 10)
            pendingApprovalAmount[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024] -= pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512
            mem[96] = pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512
            mem[0] = pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_1024
            emit Transfer(pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512, pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_0, pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_256);
        else:
            require pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768 + pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512 >= pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512
            require pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768 + pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512 <= balanceOf[stor9[cd[((32 * idx) + arg1 + 36)]].field_0]
            balanceOf[stor9[cd[((32 * idx) + arg1 + 36)]].field_0] = balanceOf[stor9[cd[((32 * idx) + arg1 + 36)]].field_0] - pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768 - pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512
            require pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512 + balanceOf[stor9[cd[((32 * idx) + arg1 + 36)]].field_256] >= balanceOf[stor9[cd[((32 * idx) + arg1 + 36)]].field_256]
            balanceOf[stor9[cd[((32 * idx) + arg1 + 36)]].field_256] += pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512
            require pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768 + balanceOf[stor13] >= balanceOf[stor13]
            balanceOf[stor13] += pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768
            if pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_1024:
                require pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512 <= allowance[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024]
                require pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768 <= allowance[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024] - pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512
                allowance[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024] = allowance[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024] - pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512 - pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768
            require pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512 <= pendingApprovalAmount[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024]
            require pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768 <= pendingApprovalAmount[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024] - pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512
            mem[0] = pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_1024
            mem[32] = sha3(pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_0, 10)
            pendingApprovalAmount[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024] = pendingApprovalAmount[stor9[cd[((32 * idx) + arg1 + 36)]].field_0][stor9[cd[((32 * idx) + arg1 + 36)]].field_1024] - pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512 - pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768
            mem[96] = pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512
            mem[128] = pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768
            emit TransferWithFee(pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_512, pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_768, pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_0, pendingTransactions[cd[((32 * idx) + arg1 + 36)]].field_256);
        idx = idx + 1
        continue 
    return 0
}



}
