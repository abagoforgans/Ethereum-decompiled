contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 6
    stor2 = 10^14
    stor5 = 0
    stor6 = block.timestamp
    stor7 = 0
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[168 len 1972]
}



// =====================  Runtime code  =====================


const getInfo = 1


address stor0;
uint256 stor2;
array of struct stor4;
uint256 numEntries;
uint256 stor6;
uint256 prizePool;

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
    emit 0x557b02ee: Array(len=8, data='nEntries')
    emit 0xf2015917: numEntries
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < numEntries:
        mem[0] = uint8(idx)
        mem[32] = 4
        mem[96] = stor4[idx << 248].field_512
        emit 0xf2015917: stor4[idx << 248].field_512
        s = sha3(idx << 248, 4)
        idx = idx + 1
        s = s + stor4[idx << 248].field_512
        continue 
    emit 0x557b02ee: Array(len=3, data='***')
    emit 0xf2015917: (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    emit 0x557b02ee: Array(len=3, data='***')
    numEntries = 0
}

function sub_2f96dee6(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.value < stor2:
        emit 0x557b02ee: Array(len=14, data='Not enough ETH')
    else:
        emit 0x557b02ee: Array(len=2, data='OK')
        mem[(32 * arg1.length) + 128] = msg.sender
        stor4[stor5].field_0 = msg.sender or Mask(96, 160, stor4[stor5].field_0)
        stor4[stor5].field_256 = msg.value
        stor4[stor5].field_512 = block.timestamp
        stor4[stor5].field_768 = arg1.length
        if not arg1.length:
            idx = 0
            while stor4[stor5].field_768 > idx:
                stor4[stor5][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                stor4[stor5][s + 3].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            while stor4[stor5].field_768 > idx:
                stor4[stor5][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        numEntries++
        prizePool += msg.value
        emit 0xa0321955: Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), msg.sender, msg.value
        if block.timestamp / 60 > stor6:
            emit 0x557b02ee: Array(len=8, data='Run draw')
            emit 0x557b02ee: Array(len=8, data='nEntries')
            emit 0xf2015917: numEntries
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < numEntries:
                mem[0] = uint8(idx)
                mem[32] = 4
                mem[(32 * arg1.length) + 160] = stor4[idx << 248].field_512
                emit 0xf2015917: stor4[idx << 248].field_512
                s = sha3(idx << 248, 4)
                idx = idx + 1
                s = s + stor4[idx << 248].field_512
                continue 
            emit 0x557b02ee: Array(len=3, data='***')
            emit 0xf2015917: (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
            emit 0x557b02ee: Array(len=3, data='***')
            numEntries = 0
            stor6 = block.timestamp / 60
}



}
