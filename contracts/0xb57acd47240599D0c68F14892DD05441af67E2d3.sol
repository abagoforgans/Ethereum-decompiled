contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 0
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor1 = 42
    return code.data[45 len 741]
}



// =====================  Runtime code  =====================


uint256 playCount;
uint256 playCount1;
address owner;
mapping of uint256 players;
array of struct stor4;
uint256 stor5;

function playCount1() payable {
    return playCount1
}

function owner() payable {
    return owner
}

function playCount() payable {
    return playCount
}

function players(address arg1) payable {
    return players[arg1]
}

function terminate() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function terminateAlt() payable {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function aloha() payable {
    mem[192] = uint256(stor4.field_0)
    idx = 192
    s = 0
    while stor4.length + 192 > idx + 32:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor4.length, data=mem[192 len stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32)]), stor5
}

function play(address arg1, uint256 arg2) payable {
    playCount++
    playCount1++
    emit Sent(owner, address(arg1), playCount + 1);
    players[address(arg1)] += arg2
    stor4.length = 0x6869000000000000000000000000000000000000000000000000000000000004
    idx = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
    while (stor4.length + 31 / 32) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor5 = playCount1
    return msg.value
}



}
