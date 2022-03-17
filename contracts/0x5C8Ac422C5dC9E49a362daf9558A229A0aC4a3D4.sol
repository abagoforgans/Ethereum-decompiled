contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    stor0 = 10^17
    stor7 = 2
    stor11 = 2
    stor15 = 2
    stor9 = 0
    stor13 = 1
    stor14 = 0
    stor12 = 1
    stor10 = 0
    stor8 = 1
    stor5 = 0
    stor6 = 0
    return code.data[490 len 1665]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of address stor1;
array of uint256 stor2;
address stor3;
uint256 stor4;
uint256 num_players;
uint256 stor6; offset 1
uint256 reward;
uint256 sub_fd77fdfb;
uint256 winner;

function reward() payable {
    return reward
}

function num_players() payable {
    return num_players
}

function winner() payable {
    return winner
}

function sub_ee76be97(?) payable {
    require arg1 < 3
    require arg2 < 3
    return stor[arg2 + (3 * arg1) + 7]
}

function sub_fd77fdfb(?) payable {
    return sub_fd77fdfb
}

function _fallback() payable {
  stop
}

function player(uint256 arg1) payable {
    require arg1 < 2
    return address(stor1[arg1]), stor2[arg1]
}

function finalize() payable {
    require stor2.length < 3
    require stor4 < 3
    if not stor[stor4 + (3 * stor2.length) + 7]:
        call address(stor1.length) with:
           value reward wei
             gas 0 wei
        winner = 0
    else:
        require stor2.length < 3
        require stor4 < 3
        if stor[stor4 + (3 * stor2.length) + 7] == 1:
            call stor3 with:
               value reward wei
                 gas 0 wei
            winner = 1
        else:
            call address(stor1.length) with:
               value stor6 wei
                 gas 0 wei
            call stor3 with:
               value stor6 wei
                 gas 0 wei
            winner = 2
}

function sub_3da94480(?) payable {
    if num_players >= 2:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        sub_fd77fdfb = -1
    else:
        if msg.value < stor0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
            sub_fd77fdfb = -1
        else:
            reward += msg.value
            require num_players < 2
            uint256(stor1[stor5]) = msg.sender or Mask(96, 160, uint256(stor1[stor5]))
            stor2[stor5] = arg1
            num_players++
            if msg.value - stor0 > 0:
                call msg.sender with:
                   value msg.value - stor0 wei
                     gas 0 wei
                reward = reward - msg.value + stor0
            sub_fd77fdfb = 0
}



}
