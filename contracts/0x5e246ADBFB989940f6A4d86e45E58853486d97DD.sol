contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0xd97c2ecbd1ba8c1785cf416a7111197fd677f638
    stor1 = this.address or Mask(96, 160, stor1)
    return code.data[81 len 10185]
}



// =====================  Runtime code  =====================


const GetContractAddr = address(this.address)


address stor0;
address stor1;
uint32 stor2;
uint32 stor2; offset 32
uint256 stor2; offset 32
uint256 stor2;

function _fallback() payable {
    revert 
}

function GetPrice(uint8 arg1) payable {
    if 1 == arg1:
        return uint32(stor2.field_0)
    if arg1 != 2:
        return 0
    return uint32(stor2.field_32)
}

function UpdatePrice(uint8 arg1, uint32 arg2) payable {
    require msg.sender == stor0
    if 1 == arg1:
        uint256(stor2.field_0) = arg2 or Mask(224, 32, uint256(stor2.field_0))
    if 2 == arg1:
        Mask(224, 0, stor2.field_32) = Mask(224, 0, arg2)
}

function Create(uint32 arg1, address arg2) payable {
    create contract with 0 wei
                    code: code.data[483 len 9702], address(msg.sender), stor1
    call arg2.0x7f6d8955 with:
         gas gas_remaining - 25050 wei
        args arg1 << 224, msg.sender, address(create.new_address)
    require ext_call.success
}



}
