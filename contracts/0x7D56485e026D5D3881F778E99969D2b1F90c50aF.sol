contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint32 stor6;
uint32 stor6; offset 32
uint256 stor6; offset 64
uint256 stor6; offset 32
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = block.timestamp
    stor7 = 0
    stor8 = 0
    uint32(stor6.field_0) = 0
    Mask(224, 0, stor6.field_32) = uint32(stor6.field_32)
    Mask(192, 0, stor6.field_64) = Mask(192, 0, msg.sender)
    return code.data[98 len 2698]
}



// =====================  Runtime code  =====================


#
#  - repairTheCastle()
#  - _fallback()
#
address jesterAddress;
uint256 stor0;
uint256 lastReparation;
uint256 piggyBank;
uint256 collectedFee;
array of address citizens;
uint256 stor5;
uint32 totalCitizens;
uint32 lastCitizenPaid; offset 32
uint32 round; offset 224
address bribedCitizenAddress; offset 64
uint256 stor6; offset 64
uint256 amountAlreadyPaidBack;
uint256 amountInvested;

function round() payable {
    return round
}

function lastReparation() payable {
    return lastReparation
}

function bribedCitizen() payable {
    return bribedCitizenAddress
}

function citizensAddresses(uint256 arg1) payable {
    require arg1 < citizens.length
    return citizens[arg1]
}

function piggyBank() payable {
    return piggyBank
}

function totalCitizens() payable {
    return totalCitizens
}

function citizensAmounts(uint256 arg1) payable {
    require arg1 < stor5
    return stor[code.data[2666 len 32] + arg1]
}

function lastCitizenPaid() payable {
    return lastCitizenPaid
}

function amountInvested() payable {
    return amountInvested
}

function jester() payable {
    return address(jesterAddress)
}

function amountAlreadyPaidBack() payable {
    return amountAlreadyPaidBack
}

function collectedFee() payable {
    return collectedFee
}

function surrender() payable {
    if bribedCitizenAddress != msg.sender:
    call bribedCitizenAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
    selfdestruct(bribedCitizenAddress)
}

function newBribedCitizen(address arg1) payable {
    if msg.sender == bribedCitizenAddress:
        stor6 = Mask(192, 0, arg1)
}

function newJester(address arg1) payable {
    if msg.sender == address(jesterAddress):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function collectFee() payable {
    if msg.sender == bribedCitizenAddress:
        call bribedCitizenAddress with:
           value collectedFee wei
             gas 0 wei
}



}
