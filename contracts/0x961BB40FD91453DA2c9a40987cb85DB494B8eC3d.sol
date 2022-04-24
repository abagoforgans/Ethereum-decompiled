contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;
uint8 stor13; offset 8
uint256 stor14;
uint8 stor15;
uint256 stor16;
uint256 stor23;
uint256 stor24;

function _fallback() payable {
    stor0 = msg.sender
    bool(stor2.length) = 0
    uint255(stor2.length.field_1) = 16
    Mask(248, 0, stor2.length.field_8) = 'Tokensale of CPL' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        uint256(stor2[idx].field_0) = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    uint255(stor3.length.field_1) = 3
    Mask(248, 0, stor3.length.field_8) = 'CPL' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        uint256(stor3[idx].field_0) = 0
        idx = idx + 1
        continue 
    stor4 = 0
    stor5 = 700
    stor6 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    uint8(stor13.field_0) = 0
    uint8(stor13.field_8) = 9
    stor14 = 10^uint8(stor13.field_8)
    stor15 = 0
    stor16 = 10^15
    mem[224] = 150
    mem[256] = 145
    mem[288] = 140
    s = 17
    idx = 224
    while 320 > idx:
        uint8(stor[s].field_0) = mem[idx + 31 len 1]
        Mask(248, 0, stor[s].field_8) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 20
    while 20 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[320] = 10^6 * stor14
    mem[352] = 10^6 * stor14
    mem[384] = 10^6 * stor14
    s = 20
    idx = 320
    while 416 > idx:
        uint256(stor[s].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 23
    while 23 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    stor23 = 4350000 * stor14
    stor24 = 4650000 * stor14
    mem[416] = 5 * 10^18
    mem[448] = 20 * 10^18
    mem[480] = 50 * 10^18
    mem[512] = 300 * 10^18
    s = 25
    idx = 416
    while 544 > idx:
        Mask(72, 0, stor[s].field_0) = mem[idx + 23 len 9]
        Mask(184, 0, stor[s].field_72) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 29
    while 29 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[544] = 103
    mem[576] = 105
    mem[608] = 107
    mem[640] = 110
    s = 29
    idx = 544
    while 672 > idx:
        uint8(stor[s].field_0) = mem[idx + 31 len 1]
        Mask(248, 0, stor[s].field_8) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 33
    while 33 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    require not msg.value
    require code.data[10712 len 32] > block.timestamp
    require code.data[10744 len 32] > code.data[10712 len 32]
    require code.data[10776 len 32] > 0
    require code.data[10852 len 20]
    stor7 = code.data[10712 len 32]
    stor8 = code.data[10744 len 32]
    stor9 = code.data[10776 len 32]
    stor11 = code.data[10808 len 32]
    stor1 = code.data[10852 len 20]
    require ext_code.size(stor1)
    call stor1.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[31 len 1] == uint8(stor13.field_8):
        return code.data[1802 len 8910]
    revert
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
