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
    return code.data[98 len 2691]
}



// =====================  Runtime code  =====================


#
#  - sub_a363c9e1(?)
#  - _fallback()
#
address sub_2ac51a0bAddress;
uint256 stor0;
uint256 regeneration;
uint256 jackpot;
uint256 collectedFee;
array of address players;
uint256 stor5;
uint32 totalplayers;
uint32 lastPlayerPaid; offset 32
uint32 round; offset 224
address mainPlayerAddress; offset 64
uint256 stor6; offset 64
uint256 amountAlreadyPaidBack;
uint256 amountInvested;

function round() payable {
    return round
}

function lastPlayerPaid() payable {
    return lastPlayerPaid
}

function totalplayers() payable {
    return totalplayers
}

function sub_2ac51a0b(?) payable {
    return address(sub_2ac51a0bAddress)
}

function playersAddresses(uint256 arg1) payable {
    require arg1 < players.length
    return players[arg1]
}

function regeneration() payable {
    return regeneration
}

function jackpot() payable {
    return jackpot
}

function playersAmounts(uint256 arg1) payable {
    require arg1 < stor5
    return stor[code.data[2659 len 32] + arg1]
}

function mainPlayer() payable {
    return mainPlayerAddress
}

function amountInvested() payable {
    return amountInvested
}

function amountAlreadyPaidBack() payable {
    return amountAlreadyPaidBack
}

function collectedFee() payable {
    return collectedFee
}

function surrender() payable {
    if mainPlayerAddress != msg.sender:
    call mainPlayerAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
    selfdestruct(mainPlayerAddress)
}

function sub_cf8a5e02(?) payable {
    if msg.sender == mainPlayerAddress:
        stor6 = Mask(192, 0, arg1)
}

function sub_faa2a595(?) payable {
    if msg.sender == address(sub_2ac51a0bAddress):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function collectFee() payable {
    if msg.sender == mainPlayerAddress:
        call mainPlayerAddress with:
           value collectedFee wei
             gas 0 wei
}



}
