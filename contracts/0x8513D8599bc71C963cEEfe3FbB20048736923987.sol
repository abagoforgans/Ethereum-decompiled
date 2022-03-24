contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160

function _fallback() payable {
    stor0 = 4
    return code.data[58 len 1235]
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

function sub_23d767a5(?) payable {
    numBets++
    if msg.value < 10^14:
        require msg.value > 10^18
    bets[stor2].field_256 = msg.value
    bets[stor2].field_512 = arg2
    bets[stor2].field_0 = arg3
    bets[stor2].field_1280 = msg.sender or Mask(96, 160, bets[stor2].field_1280)
    bets[stor2].field_768 = arg2 * arg1 / 100
    return 0
}

function cancelBet(uint256 arg1) payable {
    if msg.sender == sub_05615628Address:
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
    if msg.sender == sub_05615628Address:
        if not arg2:
            call sub_05615628Address with:
               value bets[arg1].field_1024 * sub_577a8cd2 / 100 wei
                 gas 0 wei
            call bets[arg1].field_1536 with:
               value uint8(-sub_577a8cd2 + 100) * bets[arg1].field_1024 / 100 wei
                 gas 0 wei
        else:
            call sub_05615628Address with:
               value sub_577a8cd2 * bets[arg1].field_768 / 100 wei
                 gas 0 wei
            call bets[arg1].field_1280 with:
               value uint8(-sub_577a8cd2 + 100) * bets[arg1].field_768 / 100 wei
                 gas 0 wei
}



}
