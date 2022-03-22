contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint128 stor2;
uint128 stor2; offset 128
uint256 stor3;
uint256 stor4;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor3 = code.data[1534 len 32]
    stor8 = code.data[1566 len 32] or Mask(96, 160, stor8)
    stor7 = code.data[1566 len 32] or Mask(96, 160, stor7)
    stor4 = code.data[1598 len 32]
    stor0 = code.data[1630 len 32]
    stor1 = code.data[1662 len 32]
    uint128(stor2.field_0) = uint128(code.data[1694 len 32])
    uint128(stor2.field_128) = uint128(code.data[1694 len 32])
    return code.data[169 len 1365]
}



// =====================  Runtime code  =====================


uint256 totalCosts;
uint256 oneTimeCosts;
uint128 minDailyWithdrawLimit;
uint128 dailyWithdrawLimit; offset 128
address contractorAddress;
uint256 hashOfTheProposalDocument;
uint256 lastPayment;
uint256 dateOfSignature;
address clientAddress;
uint256 stor7;
uint8 isContractValid; offset 160
address originalClientAddress;

function getMinDailyWithdrawLimit() payable {
    require msg.value <= 0
    return minDailyWithdrawLimit
}

function getHashOfTheProposalDocument() payable {
    require msg.value <= 0
    return hashOfTheProposalDocument
}

function getOneTimeCosts() payable {
    require msg.value <= 0
    return oneTimeCosts
}

function getClient() payable {
    require msg.value <= 0
    return address(clientAddress)
}

function getOriginalClient() payable {
    require msg.value <= 0
    return originalClientAddress
}

function getIsContractValid() payable {
    require msg.value <= 0
    return bool(isContractValid)
}

function getDateOfSignature() payable {
    require msg.value <= 0
    return dateOfSignature
}

function getContractor() payable {
    require msg.value <= 0
    return contractorAddress
}

function getDailyWithdrawLimit() payable {
    require msg.value <= 0
    return dailyWithdrawLimit
}

function getLastPayment() payable {
    require msg.value <= 0
    return lastPayment
}

function getTotalCosts() payable {
    require msg.value <= 0
    return totalCosts
}

function _fallback() payable {
    revert 
}

function updateClientAddress(address arg1) payable {
    require msg.sender == address(clientAddress)
    require msg.value <= 0
    uint256(stor7) = arg1 or Mask(96, 160, uint256(stor7))
}

function setDailyWithdrawLimit(uint128 arg1) payable {
    require msg.sender == address(clientAddress)
    require msg.value <= 0
    if arg1 >= minDailyWithdrawLimit:
        dailyWithdrawLimit = arg1
}

function sign() payable {
    require msg.sender == originalClientAddress
    require msg.value == totalCosts
    require 0 == dateOfSignature
    call contractorAddress with:
       value oneTimeCosts wei
         gas 0 wei
    require ext_call.success
    dateOfSignature = block.timestamp
    isContractValid = 1
    lastPayment = block.timestamp
}

function returnRemainingEther() payable {
    require msg.sender == address(clientAddress)
    call originalClientAddress.DAOrewardAccount() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34050 wei
    isContractValid = 0
}

function getDailyPayment() payable {
    require msg.value <= 0
    require contractorAddress == msg.sender
    if (block.timestamp * dailyWithdrawLimit) - (lastPayment * dailyWithdrawLimit) / 24 * 3600 <= eth.balance(this.address):
        call contractorAddress with:
           value (block.timestamp * dailyWithdrawLimit) - (lastPayment * dailyWithdrawLimit) / 24 * 3600 wei
             gas 0 wei
    else:
        call contractorAddress with:
           value eth.balance(this.address) wei
             gas 0 wei
    if ext_call.success:
        lastPayment = block.timestamp
}



}
