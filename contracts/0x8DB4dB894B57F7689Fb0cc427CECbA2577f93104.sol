contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
bool stor1; offset 256
uint8 stor1; offset 160
uint8 stor1; offset 168
uint8 stor1; offset 176
uint8 stor1; offset 184
uint64 stor1; offset 192

function _fallback() payable {
    uint8(stor1.field_160) = 0
    uint8(stor1.field_168) = 1
    uint8(stor1.field_176) = 2
    uint8(stor1.field_184) = 3
    uint64(stor1.field_192) = 0
    stor1.field_256 % 1 = 0
    stor1.field_256 % 1 = 0
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    return code.data[153 len 527]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint8 sub_5668c972; offset 160
uint8 sub_e2f8f22d; offset 168
uint8 sub_0638883a; offset 176
uint8 sub_9609367b; offset 184
address sub_cae22f15Address;
uint256 stor1;
mapping of address sub_adcd45c8;

function sub_0638883a(?) payable {
    return sub_0638883a
}

function sub_5668c972(?) payable {
    return sub_5668c972
}

function sub_9609367b(?) payable {
    return sub_9609367b
}

function sub_adcd45c8(?) payable {
    return address(sub_adcd45c8[arg1])
}

function sub_cae22f15(?) payable {
    return sub_cae22f15Address
}

function sub_e2f8f22d(?) payable {
    return sub_e2f8f22d
}

function _fallback() payable {
  stop
}

function setStorage(address arg1) payable {
    if address(stor0) == msg.sender:
        stor1 = arg1 or Mask(96, 160, stor1)
}

function setOwner(address arg1) payable {
    if address(stor0) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function setAccountProvider(uint8 arg1, address arg2) payable {
    if address(stor0) == msg.sender:
        uint256(sub_adcd45c8[arg1 << 248]) = arg2 or Mask(96, 160, uint256(sub_adcd45c8[arg1 << 248]))
}



}
