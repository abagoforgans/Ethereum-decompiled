contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 6
    stor2 = 60
    stor3 = 10^14
    stor6 = 0
    stor7 = block.timestamp / stor2
    stor8 = 0
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[186 len 1597]
}



// =====================  Runtime code  =====================


const getInfo = 1


address stor0;
uint256 stor2;
uint256 stor3;
mapping of struct stor5;
uint256 numEntries;
uint256 stor7;
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
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < numEntries:
        mem[0] = uint8(idx)
        mem[32] = 5
        mem[96] = stor5[idx << 248].field_512 + stor5[idx << 248].field_0
        emit 0xf2015917: (stor5[idx << 248].field_512 + stor5[idx << 248].field_0)
        s = sha3(idx << 248, 5)
        idx = idx + 1
        s = s + stor5[idx << 248].field_512 + stor5[idx << 248].field_0
        continue 
    emit 0xf2015917: (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
}

function sub_2f96dee6(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.value < stor3:
        emit 0x557b02ee: Array(len=14, data='Not enough ETH')
    else:
        emit 0x557b02ee: Array(len=27, data='Entry accepted successfully')
        mem[(32 * arg1.length) + 128] = msg.sender
        stor5[stor6].field_0 = msg.sender or Mask(96, 160, stor5[stor6].field_0)
        stor5[stor6].field_256 = msg.value
        stor5[stor6].field_512 = block.timestamp
        stor5[stor6].field_768 = arg1.length
        if not arg1.length:
            idx = 0
            while stor5[stor6].field_768 > idx:
                stor5[stor6][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                stor5[stor6][s + 3].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            while stor5[stor6].field_768 > idx:
                stor5[stor6][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        numEntries++
        prizePool += msg.value
        emit 0xa0321955: Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), msg.sender, msg.value
        if block.timestamp / stor2 > stor7:
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < numEntries:
                mem[0] = uint8(idx)
                mem[32] = 5
                mem[(32 * arg1.length) + 160] = stor5[idx << 248].field_512 + stor5[idx << 248].field_0
                emit 0xf2015917: (stor5[idx << 248].field_512 + stor5[idx << 248].field_0)
                s = sha3(idx << 248, 5)
                idx = idx + 1
                s = s + stor5[idx << 248].field_512 + stor5[idx << 248].field_0
                continue 
            emit 0xf2015917: (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
            stor7 = block.timestamp / stor2
}



}
