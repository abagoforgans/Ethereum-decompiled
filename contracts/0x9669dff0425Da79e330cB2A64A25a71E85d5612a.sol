contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 409]
}



// =====================  Runtime code  =====================


address stor0;
uint256 initialval;
uint16 stor2; offset 240
uint128 uint80val;
uint128 stor2; offset 80
uint128 stor2; offset 160
uint256 finalval; offset 80

function getFinalval() payable {
    return address(finalval)
}

function getInitialval() payable {
    return initialval
}

function getUint80val() payable {
    return uint80val
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_d0b3f5c8(?) payable {
    initialval = msg.value
    if msg.value <= 0:
        uint80val = Mask(80, 0, msg.value)
        Mask(80, 0, stor2.field_80) = Mask(80, 0, msg.value)
        Mask(80, 0, stor2.field_160) = 0
        uint16(stor2.field_240) = Mask(16, 240, msg.value) >> 240
    else:
        if msg.value > test266151307():
            uint80val = Mask(80, 0, msg.value)
            Mask(80, 0, stor2.field_80) = Mask(80, 0, msg.value)
            Mask(80, 0, stor2.field_160) = 0
            uint16(stor2.field_240) = Mask(16, 240, msg.value) >> 240
}



}
