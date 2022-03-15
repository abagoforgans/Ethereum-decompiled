contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 160
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint16 stor6;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    stor2 = block.timestamp
    stor3 = 10^15
    stor4 = 600
    stor5 = 10
    stor7 = 0
    stor8 = 0
    stor6 = 0
    return code.data[101 len 1034]
}



// =====================  Runtime code  =====================


address stor0;
address sub_71a2ee52Address;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 sub_6c66cbb9;
uint8 sub_ecff250f; offset 8
uint256 stor6; offset 8
uint256 stor6;
uint256 stor7;
uint8 stor8;

function sub_6c66cbb9(?) payable {
    return sub_6c66cbb9
}

function sub_71a2ee52(?) payable {
    return address(sub_71a2ee52Address)
}

function sub_ecff250f(?) payable {
    return sub_ecff250f
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function sub_1fc3a9a7(?) payable {
    if stor8:
        return (stor5 * stor7 / 100)
    return (stor5 * eth.balance(this.address) / 100)
}

function getRemainingTime() payable {
    if block.timestamp >= stor4 + stor2:
        return 0
    return (stor4 + stor2 - block.timestamp)
}

function sub_cbb68369(?) payable {
    if stor8:
        return ((100 * stor7) - (stor5 * stor7) / 100)
    return ((100 * eth.balance(this.address)) - (stor5 * eth.balance(this.address)) / 100)
}

function _fallback() payable {
    if block.timestamp < stor2 + stor4:
        if msg.value >= stor3:
            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
            stor2 = block.timestamp
}

function sub_62287c31(?) payable {
    if address(sub_71a2ee52Address) != arg1:
        return (address(sub_71a2ee52Address) == arg1)
    call this.address.0xefb98bcf with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return (0 == ext_call.return_data[0])
}

function sub_32983c9e(?) payable {
    call this.address.0xefb98bcf with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if 0 == ext_call.return_data[0]:
        if not sub_ecff250f:
            if msg.sender == stor0:
                if not stor8:
                    stor7 = eth.balance(this.address)
                    stor8 = 1
                call msg.sender with:
                   value stor7 * stor5 / 100 wei
                     gas 0 wei
                Mask(248, 0, stor6.field_8) = Mask(248, 0, ext_call.success)
}

function claimWinner() payable {
    call this.address.0xefb98bcf with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if 0 == ext_call.return_data[0]:
        if not sub_6c66cbb9:
            if msg.sender == address(sub_71a2ee52Address):
                if not stor8:
                    stor7 = eth.balance(this.address)
                    stor8 = 1
                call msg.sender with:
                   value (100 * stor7) - (stor5 * stor7) / 100 wei
                     gas 0 wei
                uint256(stor6.field_0) = Mask(248, 0, stor6.field_8)
}



}
