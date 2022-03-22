contract main {


// =======================  Init code  ======================


address stor2;
uint256 stor3;
uint32 stor5; offset 160

function _fallback() payable {
    stor3 = 0
    stor2 = 0xf56d3a85ab19dfe223dce6f99ef49aae247d257c
    stor5 = 0
    return code.data[79 len 1272]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address sub_9b622769Address;
uint256 stor1;
address sub_efe6434cAddress;
uint256 amount;
address receiverAddress;
uint256 stor4;
bool stor5; offset 256
uint8 sub_f6d983d5; offset 160
uint8 stor5; offset 168
uint8 stor5; offset 176
uint16 stor5; offset 168
uint32 stor5; offset 160
uint128 stor5; offset 184
address sub_594016cdAddress;
uint256 stor5;

function GetOwner() payable {
    return address(owner)
}

function sub_594016cd(?) payable {
    return sub_594016cdAddress
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
    return address(receiverAddress)
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
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
        sub_f6d983d5 = 1
        uint16(stor5.field_168) = 0
        Mask(72, 0, stor5.field_184) = 0
        stor5.field_256 % 1 = 0
}

function sub_592d0cba(?) payable {
    if msg.sender == address(sub_9b622769Address):
        uint8(stor5.field_176) = 1
        if False or bool(uint8(stor5.field_168)):
            if uint8(stor5.field_176):
                address(owner) = address(receiverAddress)
                stor5.field_160 % 16777216 = 0
}

function sub_2c1d6b3f(?) payable {
    if sub_efe6434cAddress == msg.sender:
        uint8(stor5.field_168) = 1
        if True or False:
            if uint8(stor5.field_176):
                address(owner) = address(receiverAddress)
                sub_f6d983d5 = 0
                uint8(stor5.field_168) = 0
                uint8(stor5.field_176) = 0
}

function Split(address arg1, uint256 arg2) payable {
    if sub_efe6434cAddress != msg.sender:
        return this.address
    if arg2 > amount:
        return this.address
    if arg2 <= 0:
        return this.address
    amount -= arg2
    create contract with 0 wei
                    code: code.data[1128 len 144]
    uint256(stor5.field_0) = create.new_address or Mask(96, 160, uint256(stor5.field_0))
    return address(create.new_address)
}



}
