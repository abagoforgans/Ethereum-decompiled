contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 160
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    stor2 = block.timestamp
    stor3 = 10^12
    stor4 = 600
    return code.data[70 len 424]
}



// =====================  Runtime code  =====================


const sub_63898988(?) = eth.balance(this.address)


address stor0;
address sub_71a2ee52Address;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function sub_71a2ee52(?) payable {
    return address(sub_71a2ee52Address)
}

function _fallback() payable {
    if block.timestamp > stor2 + stor4:
        call stor0 with:
           value eth.balance(this.address) / 20 wei
             gas 0 wei
        selfdestruct(address(sub_71a2ee52Address))
    if msg.value >= stor3:
        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
        stor2 = block.timestamp
}

function getRemainingTime() payable {
    if block.timestamp >= stor4 + stor2:
        return 0
    return (stor4 + stor2 - block.timestamp)
}

function sub_62287c31(?) payable {
    if address(sub_71a2ee52Address) != arg1:
        return (address(sub_71a2ee52Address) == arg1)
    call this.address.0xefb98bcf with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return (0 == ext_call.return_data[0])
}



}
