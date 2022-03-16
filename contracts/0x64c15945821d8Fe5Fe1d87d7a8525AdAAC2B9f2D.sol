contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint256 stor0;
array of uint256 stor1;
uint8 stor2;

function _fallback() payable {
    uint8(stor0.field_160) = 10
    stor2 = 255
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    idx = 0
    while uint8(idx) < 10:
        require idx < 10
        stor1[0.03125 / idx] = 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor1[0.03125 / idx]
        idx = idx + 1
        continue 
    return code.data[269 len 932]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
array of uint8 value;
uint8 stor2;
uint256 stor2;

function getValue(uint8 arg1) payable {
    require arg1 < 10
    return uint8(value[uint8(arg1)])
}

function kill() payable {
    if address(stor0.field_0) != msg.sender:
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
  stop
}

function getArraySettingResult() payable {
    return ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor2', 2)))))
}

function getArray() payable {
    idx = 416
    s = 0
    while 736 > idx + 32:
        mem[idx + 32] = uint8(value[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return uint8(value.length), mem[448 len 288]
}

function setArray(uint8[10] arg1) payable {
    mem[64] = 416
    mem[96 len 320] = call.data[4 len 320]
    uint8(stor2) = 0
    idx = 0
    while uint8(idx) < uint8(stor0.field_160):
        require idx < 10
        uint256(value[0.03125 / idx]) = mem[(32 * idx) + 96] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(value[0.03125 / idx])
        idx = idx + 1
        continue 
    uint8(stor2) = 1
}



}
