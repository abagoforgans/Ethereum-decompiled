contract main {


// =======================  Init code  ======================


uint16 stor1;
uint256 stor2;
bool stor3; offset 256
uint8 stor3;
address stor3; offset 8

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    uint8(stor3.field_0) = 1
    address(stor3.field_8) = msg.sender
    stor3.field_256 % 1 = 0
    require not msg.value
    return code.data[83 len 935]
}



// =====================  Runtime code  =====================


const VERSION = '0.1.0'


mapping of uint8 stor0;
uint16 chunkNr;
uint256 controlSum;
uint8 stor3;
address stor3; offset 8

function contains(address arg1) {
    return bool(stor0[arg1])
}

function chunkNr() {
    return chunkNr
}

function controlSum() {
    return controlSum
}

function isSetupMode() {
    return bool(uint8(stor3.field_0))
}

function _fallback() payable {
    revert
}

function start() {
    require address(stor3.field_8) == msg.sender
    uint8(stor3.field_0) = 0
}

function addPack(address[] arg1, uint16 arg2) {
    require uint8(stor3.field_0)
    require address(stor3.field_8) == msg.sender
    chunkNr = uint16(chunkNr + 1)
    require arg2 == chunkNr
    idx = 0
    while uint16(idx) < arg1.length:
        mem[0] = address(cd[((32 * uint16(idx)) + arg1 + 36)])
        mem[32] = 0
        stor0[address(cd[((32 * uint16(idx)) + arg1 + 36)])] = 1
        controlSum += address(cd[((32 * uint16(idx)) + arg1 + 36)])
        idx = idx + 1
        continue 
}



}
