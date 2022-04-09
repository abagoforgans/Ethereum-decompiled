contract main {


// =======================  Init code  ======================


uint16 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
address stor4; offset 8

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 0
    uint8(stor4.field_0) = 1
    require not msg.value
    address(stor4.field_8) = msg.sender
    return code.data[96 len 1416]
}



// =====================  Runtime code  =====================


const VERSION = '0.3.1'


mapping of struct stor0;
uint16 chunkNr;
uint256 recordNum;
uint256 controlSum;
uint8 stor4;
address adminAddress; offset 8

function recordNum() {
    return recordNum
}

function chunkNr() {
    return chunkNr
}

function controlSum() {
    return controlSum
}

function admin() {
    return adminAddress
}

function isSetupMode() {
    return bool(stor4)
}

function _fallback() {
    revert
}

function start() {
    require adminAddress == msg.sender
    stor4 = 0
}

function allowed(address arg1) {
    return stor0[arg1].field_0, stor0[arg1].field_24
}

function addPack(address[] arg1, uint24[] arg2, uint24[] arg3, uint16 arg4) payable {
    mem[64] = 96
    require not msg.value
    require stor4
    require adminAddress == msg.sender
    chunkNr = uint16(chunkNr + 1)
    require arg4 == chunkNr
    require arg1.length == arg2.length
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    while uint16(idx) < arg1.length:
        require uint16(idx) < arg3.length
        require uint16(idx) < arg2.length
        mem[0] = address(cd[((32 * uint16(idx)) + arg1 + 36)])
        mem[32] = 0
        if stor0[address(cd[((32 * uint16(idx)) + arg1 + 36)])].field_24 <= 0:
            if cd[((32 * uint16(idx)) + arg3 + 36)] % 16777216 > 0:
                _13 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13] = cd[((32 * uint16(idx)) + arg2 + 36)] % 16777216
                mem[_13 + 32] = cd[((32 * uint16(idx)) + arg3 + 36)] % 16777216
                mem[0] = address(cd[((32 * uint16(idx)) + arg1 + 36)])
                mem[32] = 0
                stor0[address(cd[((32 * uint16(idx)) + arg1 + 36)])].field_0 = cd[((32 * uint16(idx)) + arg2 + 36)] % 16777216
                stor0[address(cd[((32 * uint16(idx)) + arg1 + 36)])].field_24 = cd[((32 * uint16(idx)) + arg3 + 36)] % 16777216
                controlSum += address((cd[((32 * uint16(idx)) + arg3 + 36)] % 16777216) + address(cd[((32 * uint16(idx)) + arg1 + 36)]) + (cd[((32 * uint16(idx)) + arg2 + 36)] % 16777216))
        else:
            controlSum -= address(stor0[address(cd[((32 * uint16(idx)) + arg1 + 36)])].field_24 + address(cd[((32 * uint16(idx)) + arg1 + 36)]) + stor0[address(cd[((32 * uint16(idx)) + arg1 + 36)])].field_0)
            mem[0] = address(cd[((32 * uint16(idx)) + arg1 + 36)])
            mem[32] = 0
            stor0[address(cd[((32 * uint16(idx)) + arg1 + 36)])].field_0 = 0
            if cd[((32 * uint16(idx)) + arg3 + 36)] % 16777216 > 0:
                _17 = mem[64]
                mem[64] = mem[64] + 64
                mem[_17] = cd[((32 * uint16(idx)) + arg2 + 36)] % 16777216
                mem[_17 + 32] = cd[((32 * uint16(idx)) + arg3 + 36)] % 16777216
                mem[0] = address(cd[((32 * uint16(idx)) + arg1 + 36)])
                mem[32] = 0
                stor0[address(cd[((32 * uint16(idx)) + arg1 + 36)])].field_0 = cd[((32 * uint16(idx)) + arg2 + 36)] % 16777216
                stor0[address(cd[((32 * uint16(idx)) + arg1 + 36)])].field_24 = cd[((32 * uint16(idx)) + arg3 + 36)] % 16777216
                controlSum += address((cd[((32 * uint16(idx)) + arg3 + 36)] % 16777216) + address(cd[((32 * uint16(idx)) + arg1 + 36)]) + (cd[((32 * uint16(idx)) + arg2 + 36)] % 16777216))
        s = sha3(address(cd[((32 * uint16(idx)) + arg1 + 36)]), 0)
        s = cd[((32 * uint16(idx)) + arg2 + 36)] % 16777216
        s = cd[((32 * uint16(idx)) + arg3 + 36)] % 16777216
        s = address(cd[((32 * uint16(idx)) + arg1 + 36)])
        idx = idx + 1
        continue 
    recordNum += arg1.length
}



}
