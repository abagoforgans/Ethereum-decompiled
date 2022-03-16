contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[109 len 2063]
}



// =====================  Runtime code  =====================


const getInfo = 1


address stor0;
uint256 prizePool;
uint256 numEntries;
mapping of struct stor5;
uint256 stor6;

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

function sub_3a722d0d(?) payable {
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < numEntries:
        mem[0] = uint8(idx)
        mem[32] = 5
        s = sha3(idx << 248, 5)
        idx = idx + 1
        s = s + stor5[idx << 248].field_512 + stor5[idx << 248].field_0
        continue 
    emit 0x557b02ee: Array(len=3, data='***')
    emit 0xf2015917: (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    emit 0x557b02ee: Array(len=3, data='***')
    numEntries = 0
}

function sub_2f96dee6(?) payable {
    emit 0xf2015917: msg.value
    emit 0xf2015917: block.timestamp
    emit 0xf2015917: stor6
    emit 0xf2015917: (block.timestamp / 60)
    if block.timestamp / 60 > stor6:
        emit 0x557b02ee: Array(len=8, data='Run draw')
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < numEntries:
            mem[0] = uint8(idx)
            mem[32] = 5
            s = sha3(idx << 248, 5)
            idx = idx + 1
            s = s + stor5[idx << 248].field_512 + stor5[idx << 248].field_0
            continue 
        emit 0x557b02ee: Array(len=3, data='***')
        emit 0xf2015917: (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
        emit 0x557b02ee: Array(len=3, data='***')
        numEntries = 0
        stor6 = block.timestamp / 60
        emit 0x557b02ee: Array(len=11, data='prevHour = ')
        emit 0xf2015917: stor6
    if msg.value >= 10^14:
        emit 0x557b02ee: Array(len=2, data='OK')
    else:
        emit 0x557b02ee: Array(len=14, data='Not enough ETH')
    stor5[stor4].field_0 = msg.sender or Mask(96, 160, stor5[stor4].field_0)
    stor5[stor4].field_256 = msg.value
    stor5[stor4].field_512 = block.timestamp
    numEntries++
    prizePool += msg.value
    emit 0xa0321955: Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), msg.sender, msg.value
}



}
