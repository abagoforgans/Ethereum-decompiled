contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[109 len 1142]
}



// =====================  Runtime code  =====================


const getInfo = 1


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
    emit 0xf2015917: msg.value
    emit 0xf2015917: 10^12
    if msg.value >= 10^12:
        emit 0x557b02ee: Array(len=2, data='OK')
    else:
        emit 0x557b02ee: Array(len=14, data='Not enough ETH')
    stor5[stor4].field_0 = msg.sender or Mask(96, 160, stor5[stor4].field_0)
    stor5[stor4].field_256 = msg.value
    numEntries++
    prizePool += msg.value
    emit 0xa0321955: Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), msg.sender, msg.value
}



}
