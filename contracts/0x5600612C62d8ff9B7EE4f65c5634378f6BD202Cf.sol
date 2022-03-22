contract main {


// =======================  Init code  ======================


uint256 stor4;
uint256 stor9;
uint256 stor10;
uint8 stor12;
uint256 stor13;

function _fallback() payable {
    stor9 = code.data[2547 len 32]
    stor4 = code.data[2579 len 32] or Mask(96, 160, stor4)
    stor10 = code.data[2611 len 32] or Mask(96, 160, stor10)
    stor12 = 16
    stor13 = 100
    return code.data[105 len 2442]
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
uint256 tokenDivisor;

function getTokenDivisor() payable {
    require msg.value <= 0
    return tokenDivisor
}

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

function sub_c27d74b0(?) payable {
    require msg.sender == address(contractorAddress)
    require msg.value <= 0
    require arg2
    require arg2 != hashOfTheSignedDocument
    proposalCost = arg1
    hashOfTheProposalDocument = arg2
    emit 0x53ba19d8: arg2, arg1
}

function ChangeClient(address arg1) payable {
    require address(clientAddress) == msg.sender
    require msg.value <= 0
    require address(clientAddress) != arg1
    emit 0xb191c8a5: address(clientAddress), arg1
    uint256(stor9) = arg1 or Mask(96, 160, uint256(stor9))
}

function ChangeContractor(address arg1) payable {
    require msg.sender == address(contractorAddress)
    require msg.value <= 0
    require address(contractorAddress) != arg1
    emit 0x3bdb86d6: address(contractorAddress), arg1
    uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
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

function ChangeClientTokenAccount(address arg1, bool arg2) payable {
    require msg.sender == address(tokenAccount)
    require msg.value <= 0
    require address(tokenAccount) != arg1
    if arg2:
        tokenDivisor += 10
    emit 0x1f47fd25: address(tokenAccount), address(arg1), tokenDivisor
    uint256(stor10) = arg1 or Mask(96, 160, uint256(stor10))
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
        totalSupply += 100 * msg.value / tokenDivisor
        balanceOf[address(stor10)] += 100 * msg.value / tokenDivisor
        emit Mint((100 * msg.value / tokenDivisor), address(tokenAccount));
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
        totalSupply += 100 * msg.value / tokenDivisor
        balanceOf[address(stor10)] += 100 * msg.value / tokenDivisor
        emit Mint((100 * msg.value / tokenDivisor), address(tokenAccount));
}



}
