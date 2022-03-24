contract main {


// =======================  Init code  ======================


bool stor0; offset 256
uint8 stor0; offset 160
address stor0;

function _fallback() payable {
    address(stor0.field_0) = 0xff26c1a2eb31873b151bc36cfbb9c268fbecf093
    uint8(stor0.field_160) = 4
    stor0.field_256 % 1 = 0
    return code.data[92 len 1282]
}



// =====================  Runtime code  =====================


uint8 sub_577a8cd2; offset 160
address sub_05615628Address;
mapping of struct bets;
uint256 numBets;

function sub_05615628(?) payable {
    return sub_05615628Address
}

function bets(uint256 arg1) payable {
    return bets[arg1].field_0, 
           bets[arg1].field_256,
           bets[arg1].field_512,
           bets[arg1].field_768,
           bets[arg1].field_1024,
           bets[arg1].field_1280,
           bets[arg1].field_1536
}

function sub_577a8cd2(?) payable {
    return sub_577a8cd2
}

function numBets() payable {
    return numBets
}

function kill() payable {
    if sub_05615628Address != msg.sender:
    selfdestruct(sub_05615628Address)
}

function _fallback() payable {
  stop
}

function acceptBet(uint256 arg1) payable {
    require 0 == bets[arg1].field_1536
    bets[arg1].field_1536 = msg.sender or Mask(96, 160, bets[arg1].field_1536)
    require msg.value == bets[arg1].field_768
    bets[arg1].field_1024 = msg.value + bets[arg1].field_256
    return msg.sender
}

function sub_99c5b4ed(?) payable {
    numBets++
    if msg.value < 10^14:
        require msg.value <= 10^18
    bets[stor2].field_256 = msg.value
    bets[stor2].field_512 = arg1
    bets[stor2].field_0 = arg2
    bets[stor2].field_1280 = msg.sender or Mask(96, 160, bets[stor2].field_1280)
    bets[stor2].field_768 = arg1 * msg.value / 100
    return numBets
}

function cancelBet(uint256 arg1) payable {
    if sub_05615628Address == msg.sender:
        require bets[arg1].field_1280
        call bets[arg1].field_1280 with:
           value bets[arg1].field_256 wei
             gas 0 wei
        require bets[arg1].field_1536
        call bets[arg1].field_1536 with:
           value bets[arg1].field_768 wei
             gas 0 wei
        bets[arg1].field_0 = 0
        bets[arg1].field_256 = 0
        bets[arg1].field_512 = 0
        bets[arg1].field_768 = 0
        bets[arg1].field_1024 = 0
        bets[arg1].field_1280 = 0
        bets[arg1].field_1536 = 0
}

function sub_4a1342cc(?) payable {
    if sub_05615628Address == msg.sender:
        if not arg2:
            call sub_05615628Address with:
               value bets[arg1].field_1024 * sub_577a8cd2 / 100 wei
                 gas 0 wei
            call bets[arg1].field_1536 with:
               value uint8(-sub_577a8cd2 + 100) * bets[arg1].field_1024 / 100 wei
                 gas 0 wei
        else:
            call sub_05615628Address with:
               value bets[arg1].field_768 * sub_577a8cd2 / 100 wei
                 gas 0 wei
            call bets[arg1].field_1280 with:
               value bets[arg1].field_768 * uint8(-sub_577a8cd2 + 100) / 100 wei
                 gas 0 wei
}



}
