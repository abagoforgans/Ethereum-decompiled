contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2870]




// =====================  Runtime code  =====================


#
#  - sub_665d1bcd(?)
#  - _fallback()
#
address sub_45f5958cAddress;
uint256 stor0;
uint256 lastInvestment;
uint256 sub_6e1d5537;
uint256 collectedFee;
array of address sub_f36fe8c3;
uint256 stor5;
uint32 totalParticipants;
uint32 sub_ee327de1; offset 32
uint32 sub_d8a20bc4; offset 224
address domainOwner; offset 64
uint256 stor6; offset 64
uint256 stor6; offset 32
uint256 amountAlreadyPaidBack;
uint256 sub_0b8b7e7c;
array of uint256 sub_f9c1f5fc;

function sub_0b8b7e7c(?) payable {
    return sub_0b8b7e7c
}

function sub_45f5958c(?) payable {
    return address(sub_45f5958cAddress)
}

function lastInvestment() payable {
    return lastInvestment
}

function sub_6e1d5537(?) payable {
    return sub_6e1d5537
}

function totalParticipants() payable {
    return totalParticipants
}

function domainOwner() payable {
    return domainOwner
}

function sub_d8a20bc4(?) payable {
    return sub_d8a20bc4
}

function amountAlreadyPaidBack() payable {
    return amountAlreadyPaidBack
}

function collectedFee() payable {
    return collectedFee
}

function sub_ee327de1(?) payable {
    return sub_ee327de1
}

function sub_f36fe8c3(?) payable {
    require arg1 < sub_f36fe8c3.length
    return sub_f36fe8c3[arg1]
}

function sub_f9c1f5fc(?) payable {
    require arg1 < stor5
    return sub_f9c1f5fc[arg1]
}

function sub_7f21a282(?) payable {
    if domainOwner != msg.sender:
    call domainOwner with:
       value eth.balance(this.address) wei
         gas 0 wei
    selfdestruct(domainOwner)
}

function sub_86562b87(?) payable {
    if msg.sender == domainOwner:
        Mask(192, 0, stor6.field_64) = Mask(192, 0, arg1)
}

function sub_4b6ae83a(?) payable {
    if msg.sender == domainOwner:
        call domainOwner with:
           value collectedFee wei
             gas 0 wei
}

function sub_ce9a37d4(?) payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    lastInvestment = block.timestamp
    amountAlreadyPaidBack = 0
    sub_0b8b7e7c = 0
    totalParticipants = 0
    Mask(224, 0, stor6.field_32) = sub_ee327de1
    Mask(192, 0, stor6.field_64) = Mask(192, 0, msg.sender)
}



}
