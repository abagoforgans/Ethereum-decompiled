contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[63 len 1865]
}



// =====================  Runtime code  =====================


address sub_71164d26Address;
uint256 stor0;
address sub_be60040eAddress;
uint256 stor1;
address sub_aaabd6b0Address;
uint256 stor2;
uint64 stor3;
uint64 sub_12d3b72a; offset 160
uint128 stor3; offset 160
address sub_5409b77aAddress;
mapping of struct sub_ca71e347;

function sub_12d3b72a(?) payable {
    return sub_12d3b72a
}

function sub_5409b77a(?) payable {
    return sub_5409b77aAddress
}

function sub_71164d26(?) payable {
    return address(sub_71164d26Address)
}

function sub_aaabd6b0(?) payable {
    return address(sub_aaabd6b0Address)
}

function sub_be60040e(?) payable {
    return address(sub_be60040eAddress)
}

function sub_ca71e347(?) payable {
    return sub_ca71e347[arg1].field_0, sub_ca71e347[arg1].field_0, sub_ca71e347[arg1].field_256, sub_ca71e347[arg1].field_512
}

function _fallback() payable {
  stop
}

function sub_7da9a481(?) payable {
    if msg.sender == address(sub_be60040eAddress):
        if arg1 < sub_12d3b72a:
            sub_ca71e347[arg1 << 192].field_128 = uint128(sub_ca71e347[arg1 << 192].field_128 + arg2)
}

function sub_4c0411b0(?) payable {
    if msg.sender == address(sub_aaabd6b0Address):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
        uint256(stor1) = arg2 or Mask(96, 160, uint256(stor1))
        uint256(stor2) = arg3 or Mask(96, 160, uint256(stor2))
}

function sub_fda5f7b1(?) payable {
    sub_ca71e347[uint64(stor3.field_0)].field_0 = 0
    sub_ca71e347[uint64(stor3.field_0)].field_256 = 0
    sub_ca71e347[uint64(stor3.field_0)].field_128 = 0
    sub_ca71e347[uint64(stor3.field_0)].field_256 = 0
    sub_ca71e347[uint64(stor3.field_0)].field_256 = uint64(block.timestamp)
    sub_ca71e347[uint64(stor3.field_0)].field_512 = arg1
    Mask(96, 0, stor3.field_160) = Mask(96, 0, sub_12d3b72a + 1)
    return uint64(sub_12d3b72a - 1)
}



}
