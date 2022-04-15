contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
uint128 stor3; offset 160

function _fallback() {
    stor2 = msg.sender
    stor0 = block.timestamp
    stor1 = 0
    stor3 = 0
    return code.data[140 len 1796]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
address stor2;
uint8 stor3; offset 160
uint128 stor3; offset 160
address stor3;
uint256 stor4;
mapping of struct stor5;

function _fallback() payable {
  stop
}

function setTokenAddress(address arg1) {
    require msg.sender == stor2
    require not address(stor3.field_0)
    address(stor3.field_0) = arg1
    return 1
}

function switch_period() {
    require block.timestamp - stor0 % 8760 * 24 * 3600 > 720 * 24 * 3600
    if not uint8(stor3.field_160):
        return 0
    Mask(96, 0, stor3.field_160) = 0
    stor4 = 0
    stor1++
    return 1
}

function redeem(uint256 arg1) {
    require block.timestamp - stor0 % 8760 * 24 * 3600 <= 720 * 24 * 3600
    if not uint8(stor3.field_160):
        Mask(96, 0, stor3.field_160) = 1
        stor4 = eth.balance(this.address)
    require ext_code.size(address(stor3.field_0))
    call address(stor3.field_0).0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(address(stor3.field_0))
        call address(stor3.field_0).getSupply() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if stor5[address(msg.sender)].field_256 != stor1:
            stor5[address(msg.sender)].field_0 = 0
            stor5[address(msg.sender)].field_256 = stor1
        stor5[address(msg.sender)].field_0 += arg1
        if stor5[address(msg.sender)].field_0 * ext_call.return_data[0] > stor4 * ext_call.return_data[0]:
            return 1
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            return 1
        stor5[address(msg.sender)].field_0 -= arg1
        return 0
    else:
        return 0
}



}
