contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint32 stor12;
uint32 stor12; offset 32
uint256 stor12; offset 64
uint256 stor12; offset 32
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor3 = block.timestamp
    stor2 = block.timestamp
    stor4 = block.timestamp
    stor5 = 10^18
    stor13 = 0
    stor14 = 0
    uint32(stor12.field_0) = 0
    Mask(224, 0, stor12.field_32) = uint32(stor12.field_32)
    Mask(192, 0, stor12.field_64) = Mask(192, 0, msg.sender)
    return code.data[130 len 3662]
}



// =====================  Runtime code  =====================


#
#  - protectKingdom()
#  - _fallback()
#
address trueGodsAddress;
address jesterAddress;
uint256 stor1;
uint256 lastCollection;
uint256 lastFell;
uint256 onThrone;
uint256 kingCost;
uint256 piggyBank;
uint256 godBank;
uint256 jesterBank;
uint256 kingBank;
array of address citizens;
uint256 stor11;
uint32 totalCitizens;
uint32 lastCitizenPaid; offset 32
uint32 round; offset 224
address madKingAddress; offset 64
uint256 stor12; offset 64
uint256 amountAlreadyPaidBack;
uint256 amountInvested;

function godBank() payable {
    return godBank
}

function round() payable {
    return round
}

function lastFell() payable {
    return lastFell
}

function kingCost() payable {
    return kingCost
}

function madKing() payable {
    return madKingAddress
}

function jesterBank() payable {
    return jesterBank
}

function citizensAddresses(uint256 arg1) payable {
    require arg1 < citizens.length
    return citizens[arg1]
}

function kingBank() payable {
    return kingBank
}

function piggyBank() payable {
    return piggyBank
}

function lastCollection() payable {
    return lastCollection
}

function totalCitizens() payable {
    return totalCitizens
}

function citizensAmounts(uint256 arg1) payable {
    require arg1 < stor11
    return stor[code.data[3630 len 32] + arg1]
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

function trueGods() payable {
    return trueGodsAddress
}

function onThrone() payable {
    return onThrone
}

function collectFee() payable {
    if msg.sender == trueGodsAddress:
        call trueGodsAddress with:
           value godBank wei
             gas 0 wei
}

function abdicate() payable {
    if msg.sender == madKingAddress:
        if trueGodsAddress != msg.sender:
            call madKingAddress with:
               value kingBank wei
                 gas 0 wei
            if piggyBank <= 40 * kingCost / 100:
                call madKingAddress with:
                   value piggyBank wei
                     gas 0 wei
                piggyBank = 0
            else:
                call madKingAddress with:
                   value 40 * kingCost / 100 wei
                     gas 0 wei
                piggyBank -= 40 * kingCost / 100
            stor12 = trueGodsAddress
            kingCost = 10^18
}

function murder() payable {
    require msg.value >= 10^17
    require address(jesterAddress) != msg.sender
    call address(jesterAddress) with:
       value jesterBank wei
         gas 0 wei
    jesterBank = 0
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    call msg.sender with:
       value msg.value - 10^17 wei
         gas 0 wei
    lastCollection = block.timestamp
    amountInvested += 10^17
    jesterBank += 5 * 10^15
    kingBank += 5 * 10^15
    piggyBank += 5 * 10^15
    if kingBank >= 10^17:
        call madKingAddress with:
           value kingBank wei
             gas 0 wei
        kingBank = 0
    if jesterBank >= 10^17:
        call address(jesterAddress) with:
           value jesterBank wei
             gas 0 wei
        jesterBank = 0
}

function usurpation() payable {
    if msg.sender == madKingAddress:
        lastCollection = block.timestamp
        amountInvested += msg.value
        jesterBank += 5 * msg.value / 100
        kingBank += 5 * msg.value / 100
        piggyBank += 5 * msg.value / 100
        if kingBank >= 10^17:
            call madKingAddress with:
               value kingBank wei
                 gas 0 wei
            kingBank = 0
        if jesterBank >= 10^17:
            call address(jesterAddress) with:
               value jesterBank wei
                 gas 0 wei
            jesterBank = 0
        kingCost += msg.value
    else:
        require onThrone + (240 * 24 * 3600) <= block.timestamp
        require msg.value >= 150 * kingCost / 100
        call madKingAddress with:
           value kingBank wei
             gas 0 wei
        godBank += 5 * msg.value / 100
        kingCost = msg.value
        stor12 = Mask(192, 0, msg.sender)
        onThrone = block.timestamp
        lastCollection = block.timestamp
        amountInvested += msg.value
        jesterBank += 5 * msg.value / 100
        kingBank += 5 * msg.value / 100
        piggyBank += 5 * msg.value / 100
        if kingBank >= 10^17:
            call madKingAddress with:
               value kingBank wei
                 gas 0 wei
            kingBank = 0
        if jesterBank >= 10^17:
            call address(jesterAddress) with:
               value jesterBank wei
                 gas 0 wei
            jesterBank = 0
}



}
