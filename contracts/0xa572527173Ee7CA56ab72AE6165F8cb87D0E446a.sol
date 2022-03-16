contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
uint8 stor2; offset 24

function _fallback() payable {
    stor1 = 0
    uint8(stor2.field_0) = 0
    uint8(stor2.field_8) = 0
    uint8(stor2.field_16) = 0
    uint8(stor2.field_24) = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[447 len 1695]
}



// =====================  Runtime code  =====================


address stor0;
uint256 digit;
bool stor2; offset 256
uint8 B0;
uint8 stor2; offset 8
uint8 stor2; offset 16
uint8 stor2; offset 24
uint256 B3; offset 24
uint256 B2; offset 16
uint256 B1; offset 8
array of uint256 stor3;

function getB3() payable {
    return (B3 << 248)
}

function getB2() payable {
    return (B2 << 248)
}

function getB1() payable {
    return (B1 << 248)
}

function getDigit() payable {
    return digit
}

function getB0() payable {
    return B0
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function getFinalBytes() payable {
    idx = 224
    s = 0
    while 352 > idx + 32:
        mem[idx + 32] = stor3.length / 256^(-(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1) << 248
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return uint8(stor3.length), mem[256 len 96]
}

function convertBytes4ToArray(bytes4 arg1) payable {
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < 4:
        digit = arg1 - s - (arg1 % 16^(-(2 * idx) + 6)) / 16^(-(2 * idx) + 6)
        uint256(stor3[0.03125 / idx]) = 0
        if not idx:
            B0 = 0
        else:
            if idx == 1:
                uint8(stor2.field_8) = 0
            else:
                if idx != 2:
                    uint8(stor2.field_24) = 0
                else:
                    uint8(stor2.field_16) = 0
        stor2.field_256 % 1 = 0
        s = arg1 - s - (arg1 % 16^(-(2 * idx) + 6))
        s = 16^(-(2 * idx) + 6)
        s = arg1 % 16^(-(2 * idx) + 6)
        s = arg1 - (arg1 % 16^(-(2 * idx) + 6))
        idx = idx + 1
        continue 
}



}
