contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
bool stor4; offset 256
uint8 stor4;
address stor4; offset 8

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 0
    uint8(stor4.field_0) = 1
    address(stor4.field_8) = msg.sender
    stor4.field_256 % 1 = 0
    require not msg.value
    return code.data[85 len 924]
}



// =====================  Runtime code  =====================


const VERSION = ''


mapping of uint8 stor0;
uint256 chunkNr;
uint256 recordNr;
uint256 controlSum;
uint8 stor4;
address stor4; offset 8

function contains(address arg1) {
    return bool(stor0[arg1])
}

function recordNr() {
    return recordNr
}

function chunkNr() {
    return chunkNr
}

function controlSum() {
    return controlSum
}

function isSetupMode() {
    return bool(uint8(stor4.field_0))
}

function _fallback() payable {
    revert
}

function start() {
    require address(stor4.field_8) == msg.sender
    uint8(stor4.field_0) = 0
}

function addPack(address[] arg1, uint16 arg2) {
    require uint8(stor4.field_0)
    require address(stor4.field_8) == msg.sender
    chunkNr++
    require arg2 == chunkNr
    idx = 0
    while uint16(idx) < arg1.length:
        mem[0] = address(cd[((32 * uint16(idx)) + arg1 + 36)])
        mem[32] = 0
        stor0[address(cd[((32 * uint16(idx)) + arg1 + 36)])] = 1
        controlSum += address(cd[((32 * uint16(idx)) + arg1 + 36)])
        idx = idx + 1
        continue 
    recordNr += arg1.length
}



}
