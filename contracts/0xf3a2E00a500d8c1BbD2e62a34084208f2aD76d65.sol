contract main {


// =======================  Init code  ======================


uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor6 = 2
    stor10 = 2
    stor14 = 2
    stor8 = 0
    stor12 = 1
    stor13 = 0
    stor11 = 1
    stor9 = 0
    stor7 = 1
    stor4 = 0
    return code.data[464 len 1747]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;
address stor2;
uint256 stor3;
uint256 num_players;
uint256 stor5; offset 1
uint256 reward;

function reward() payable {
    return reward
}

function num_players() payable {
    return num_players
}

function sub_ee76be97(?) payable {
    require arg1 < 3
    require arg2 < 3
    return uint256(stor[arg2 + (3 * arg1) + 6])
}

function _fallback() payable {
  stop
}

function sub_458734c7(?) payable {
    num_players++
}

function sub_c5d315be(?) payable {
    num_players = arg1
}

function sub_08ab2167(?) payable {
    return eth.balance(stor0), eth.balance(stor2)
}

function player(uint256 arg1) payable {
    require arg1 < 2
    return address(stor[2 * arg1]), stor1[arg1]
}

function sub_f7c0b66e(?) payable {
    if num_players >= 2:
        return -1
    reward += msg.value
    uint256(stor[2 * stor4]) = msg.sender or Mask(96, 160, uint256(stor[2 * stor4]))
    stor1[stor4] = arg1
    num_players++
    return 0
}

function check() payable {
    require stor1.length < 3
    require stor3 < 3
    if not uint256(stor[stor3 + (3 * stor1.length) + 6]):
        call stor0 with:
           value reward wei
             gas 0 wei
        return 0
    require stor1.length < 3
    require stor3 < 3
    if uint256(stor[stor3 + (3 * stor1.length) + 6]) == 1:
        call stor2 with:
           value reward wei
             gas 0 wei
        return 1
    call stor0 with:
       value stor5 wei
         gas 0 wei
    call stor2 with:
       value stor5 wei
         gas 0 wei
    return 2
}



}
