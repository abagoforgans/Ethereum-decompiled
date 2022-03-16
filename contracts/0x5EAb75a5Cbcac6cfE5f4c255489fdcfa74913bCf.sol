contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[109 len 913]
}



// =====================  Runtime code  =====================


address stor0;
uint256 prizePool;
uint256 numEntries;
mapping of struct stor5;

function getNumEntries() payable {
    return numEntries
}

function getPrizePool() payable {
    return prizePool
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_2f96dee6(?) payable {
    if msg.value < 1:
        emit Print(Array(len=14, data='Not enough ETH'));
    else:
        emit Print(Array(len=2, data='OK'));
        stor5[stor4].field_0 = msg.sender or Mask(96, 160, stor5[stor4].field_0)
        stor5[stor4].field_256 = msg.value
        numEntries++
        prizePool += msg.value
        emit 0x6e022b62: msg.value, msg.sender, 96
}



}
