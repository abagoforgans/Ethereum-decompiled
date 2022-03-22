contract main {


// =======================  Init code  ======================


address stor2;
uint256 stor3;
uint32 stor4; offset 160

function _fallback() payable {
    stor3 = 0
    stor2 = 0xf56d3a85ab19dfe223dce6f99ef49aae247d257c
    stor4 = 0
    return code.data[79 len 1149]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address sub_9b622769Address;
uint256 stor1;
address sub_efe6434cAddress;
bool stor3;
uint256 stor3;
uint256 stor3; offset 1
uint256 amount;
bool stor4; offset 256
uint8 sub_f6d983d5; offset 160
uint8 stor4; offset 168
uint8 stor4; offset 176
uint16 stor4; offset 168
uint32 stor4; offset 160
uint128 stor4; offset 184
address receiverAddress;

function GetOwner() payable {
    return address(owner)
}

function owner() payable {
    return address(owner)
}

function sub_9b622769(?) payable {
    return address(sub_9b622769Address)
}

function amount() payable {
    return amount
}

function sub_efe6434c(?) payable {
    return sub_efe6434cAddress
}

function sub_f6d983d5(?) payable {
    return sub_f6d983d5
}

function receiver() payable {
    return receiverAddress
}

function _fallback() payable {
  stop
}

function sub_8167f844(?) payable {
    if sub_efe6434cAddress == msg.sender:
        if arg3 > 0:
            uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
            uint256(stor0) = arg2 or Mask(96, 160, uint256(stor0))
            amount = arg3
}

function sub_2d339b1e(?) payable {
    if msg.sender == address(owner):
        receiverAddress = arg1
        sub_f6d983d5 = 1
        uint16(stor4.field_168) = 0
        Mask(72, 0, stor4.field_184) = Mask(72, 184, arg1) >> 184
        stor4.field_256 % 1 = 0
}

function sub_592d0cba(?) payable {
    if msg.sender == address(sub_9b622769Address):
        uint8(stor4.field_176) = 1
        if False or bool(uint8(stor4.field_168)):
            if uint8(stor4.field_176):
                address(owner) = receiverAddress
                stor4.field_160 % 16777216 = 0
}

function sub_2c1d6b3f(?) payable {
    if sub_efe6434cAddress == msg.sender:
        uint8(stor4.field_168) = 1
        if True or False:
            if uint8(stor4.field_176):
                address(owner) = receiverAddress
                sub_f6d983d5 = 0
                uint8(stor4.field_168) = 0
                uint8(stor4.field_176) = 0
}

function Split(address arg1, uint256 arg2) payable {
    if sub_efe6434cAddress != msg.sender:
        return this.address
    if arg2 > amount:
        return this.address
    if arg2 <= 0:
        return this.address
    call msg.sender.0x8167f844 with:
         gas gas_remaining - 25050 wei
        args address(sub_9b622769Address), address(arg1), arg2
    require ext_call.success
    bool(stor3.field_0) = 0
    uint255(stor3.field_1) = uint255(stor3.field_0)
    return msg.sender
}



}
