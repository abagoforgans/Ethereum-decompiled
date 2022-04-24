contract main {


// =======================  Init code  ======================


address stor3;
address stor4;
address stor5;
uint64 stor7; offset 160
uint8 stor9; offset 160
uint64 stor9; offset 168
uint64 stor10;
uint64 stor10; offset 64

function _fallback() payable {
    stor4 = 0
    stor5 = 0
    stor7 = 0
    uint8(stor9.field_160) = 0
    stor3 = msg.sender
    require code.data[15488 len 8] > block.timestamp
    uint64(stor9.field_168) = code.data[15488 len 8]
    uint64(stor10.field_0) = uint64(uint64(stor9.field_168) + (720 * 24 * 3600))
    uint64(stor10.field_64) = uint64(uint64(stor10.field_0) + (1440 * 24 * 3600))
    return code.data[529 len 14935]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
