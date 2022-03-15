contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[109 len 680]
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

function sub_bcaec98a(?) payable {
    stor5[stor4].field_0 = msg.sender or Mask(96, 160, stor5[stor4].field_0)
    stor5[stor4].field_256 = msg.value
    numEntries++
    prizePool += arg1
    emit 0x838c8ba3: arg1, msg.sender, 96
}



}
