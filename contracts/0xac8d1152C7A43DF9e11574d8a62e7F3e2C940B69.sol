contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint8 stor3; offset 24
uint32 stor3;

function _fallback() payable {
    mem[96] = 354972
    mem[128] = 348416
    mem[160] = 163714
    mem[192] = 144975
    s = 0
    idx = 96
    while 224 > idx:
        stor2 = mem[idx + 29 len 3] * 256^s or !(test266151307() * 256^s) and stor2
        s = s + (4 * -s + 7 / 32) + (-1 * s * s + 7 / 32) + 4
        idx = idx + 32
        continue 
    idx = 16
    s = 2
    while idx:
        uint256(stor[s]) = !(test266151307() * 256^idx) and uint256(stor[s])
        idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
        s = (idx + 7 / 32) + s
        continue 
    idx = (Mask(252, 2, None - 11) + 23 / 32 * Mask(254, 0, None - 11) >> 2) + 2
    while 3 > idx:
        uint32(stor[idx]) = 0
        idx = idx + 1
        continue 
    stor3.field_0 % 16777216 = 241339
    uint8(stor3.field_24) = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[431 len 799]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint32 stor3;

function Kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function fireFightResultsEvents(uint8[4] arg1) {
    mem[64] = 224
    mem[96 len 128] = call.data[4 len 128]
    idx = 0
    while uint8(idx) < 4:
        if mem[(32 * uint8(idx)) + 127 len 1] < 3:
            stor1++
            require uint8(idx) < 4
            _7 = mem[(32 * uint8(idx)) + 96]
            mem[mem[64]] = 12345678
            mem[mem[64] + 32] = 87654321
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = stor2[uint8(idx)].field_0
            mem[mem[64] + 128] = 0
            mem[mem[64] + 160] = stor3
            mem[mem[64] + 192] = uint8(_7)
            emit Fight_Results(12345678, 87654321, 0, stor2[uint8(idx) / 8].field_(32 * idx % 8) - 224, 0, stor3, uint8(_7), stor1, 0x3a428ec0ab92844de91d9116f8660dfcce42cd83, 0x826c1fd15e39a9cdda00532df316dee4bfc6a469);
        idx = idx + 1
        continue 
}



}
