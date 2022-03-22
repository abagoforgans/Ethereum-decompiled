contract main {


// =======================  Init code  ======================


uint256 stor4;
uint256 stor9;
uint128 stor10; offset 160
uint256 stor10;

function _fallback() payable {
    stor9 = code.data[2366 len 32]
    stor4 = code.data[2398 len 32] or Mask(96, 160, stor4)
    uint256(stor10.field_0) = Mask(96, 0, stor10.field_160)
    return code.data[85 len 2281]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 proposalCost;
address contractorAddress;
uint256 stor4;
uint256 hashOfTheProposalDocument;
uint256 hashOfTheSignedDocument;
uint256 dateOfLastPayment;
uint256 dateOfFirstPayment;
address clientAddress;
uint256 stor9;
address tokenAccount;
uint256 stor10;
uint256 totalPayments;

function getHashOfTheSignedDocument() payable {
    require msg.value <= 0
    return hashOfTheSignedDocument
}

function totalSupply() payable {
    return totalSupply
}

function getTokenAccount() payable {
    require msg.value <= 0
    return address(tokenAccount)
}

function getHashOfTheProposalDocument() payable {
    require msg.value <= 0
    return hashOfTheProposalDocument
}

function getClient() payable {
    require msg.value <= 0
    return address(clientAddress)
}

function getTotalPayments() payable {
    require msg.value <= 0
    return totalPayments
}

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)]
}

function getDateOfLastPayment() payable {
    require msg.value <= 0
    return dateOfLastPayment
}

function getContractor() payable {
    require msg.value <= 0
    return address(contractorAddress)
}

function getDateOfFirstPayment() payable {
    require msg.value <= 0
    return dateOfFirstPayment
}

function getProposalCost() payable {
    require msg.value <= 0
    return proposalCost
}

function allowance(address arg1, address arg2) payable {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function UpdateClientAddress(address arg1) payable {
    require msg.sender == address(clientAddress)
    require msg.value <= 0
    emit 0xb191c8a5: address(clientAddress), arg1
    uint256(stor9) = arg1 or Mask(96, 160, uint256(stor9))
}

function UpdateClientTokenAccount(address arg1) payable {
    require msg.sender == address(tokenAccount)
    require msg.value <= 0
    emit 0x14fcfd22: address(tokenAccount), arg1
    uint256(stor10) = arg1 or Mask(96, 160, uint256(stor10))
}

function UpdateContractorAddress(address arg1) payable {
    require msg.sender == address(contractorAddress)
    require msg.value <= 0
    emit 0x3bdb86d6: address(contractorAddress), arg1
    uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function sub_c27d74b0(?) payable {
    require msg.sender == address(contractorAddress)
    require msg.value <= 0
    require arg2
    require arg2 != hashOfTheSignedDocument
    proposalCost = arg1
    hashOfTheProposalDocument = arg2
    emit 0x53ba19d8: arg2, arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require msg.value <= 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require msg.value <= 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require address(clientAddress) == msg.sender
    require msg.value == proposalCost
    require hashOfTheSignedDocument != hashOfTheProposalDocument
    if 0 == dateOfFirstPayment:
        dateOfFirstPayment = block.timestamp
        totalSupply += msg.value
        balanceOf[address(stor4)] += msg.value
        emit Mint(msg.value, address(contractorAddress));
    call address(contractorAddress) with:
       value msg.value wei
         gas 0 wei
    if ext_call.success:
        totalPayments += proposalCost
        hashOfTheSignedDocument = hashOfTheProposalDocument
        emit 0x22d2436b: hashOfTheProposalDocument, proposalCost
        dateOfLastPayment = block.timestamp
        totalSupply += msg.value
        balanceOf[address(stor10)] += msg.value
        emit Mint(msg.value, address(tokenAccount));
}

function ApproveContractorProposal() payable {
    require address(clientAddress) == msg.sender
    require msg.value == proposalCost
    require hashOfTheSignedDocument != hashOfTheProposalDocument
    if 0 == dateOfFirstPayment:
        dateOfFirstPayment = block.timestamp
        totalSupply += msg.value
        balanceOf[address(stor4)] += msg.value
        emit Mint(msg.value, address(contractorAddress));
    call address(contractorAddress) with:
       value msg.value wei
         gas 0 wei
    if ext_call.success:
        totalPayments += proposalCost
        hashOfTheSignedDocument = hashOfTheProposalDocument
        emit 0x22d2436b: hashOfTheProposalDocument, proposalCost
        dateOfLastPayment = block.timestamp
        totalSupply += msg.value
        balanceOf[address(stor10)] += msg.value
        emit Mint(msg.value, address(tokenAccount));
}



}
