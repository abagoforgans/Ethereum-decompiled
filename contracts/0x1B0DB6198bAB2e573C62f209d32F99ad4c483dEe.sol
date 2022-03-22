contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 0xd32894f84e3e9da162739f6128601c3bdf539190
    return code.data[84 len 690]
}



// =====================  Runtime code  =====================


address owner;
address sub_9b622769Address;
address sub_efe6434cAddress;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint16 stor3; offset 160
uint128 stor3; offset 176
address stor3;

function owner() payable {
    return owner
}

function sub_9b622769(?) payable {
    return sub_9b622769Address
}

function sub_efe6434c(?) payable {
    return sub_efe6434cAddress
}

function getowner() payable {
    return owner
}

function _fallback() payable {
  stop
}

function transfer(address arg1) payable {
    if owner == msg.sender:
        address(stor3.field_0) = arg1
        uint16(stor3.field_160) = 0
        Mask(80, 0, stor3.field_176) = Mask(80, 176, arg1) >> 176
}

function sub_2d29dbc4(?) payable {
    if sub_9b622769Address == msg.sender:
        uint8(stor3.field_168) = 1
        if False or bool(uint8(stor3.field_160)):
            if uint8(stor3.field_168):
                owner = address(stor3.field_0)
                uint16(stor3.field_160) = 0
}

function sub_56b315f7(?) payable {
    if sub_efe6434cAddress == msg.sender:
        uint8(stor3.field_160) = 1
        if True or False:
            if uint8(stor3.field_168):
                owner = address(stor3.field_0)
                uint8(stor3.field_160) = 0
                uint8(stor3.field_168) = 0
}



}
