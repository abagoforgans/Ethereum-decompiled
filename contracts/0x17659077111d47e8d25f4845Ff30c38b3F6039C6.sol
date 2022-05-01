contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
uint128 stor1; offset 160
address stor1;
uint8 stor2;
address stor2; offset 8
uint256 stor3;
uint8 stor4;
address stor4; offset 8
uint256 stor5;

function accept() {
    return bool(uint8(stor1.field_160))
}

function _fallback() {
    revert
}

function Contribute(bytes24 arg1) payable {
    require uint8(stor1.field_160)
    emit Deposit(Mask(160, 96, arg1), msg.value);
}

function Open() {
    if msg.sender == stor0:
        uint8(stor2.field_0) = 3
    else:
        require msg.sender == address(stor1.field_0)
        uint8(stor4.field_0) = 3
    require uint8(stor2.field_0) <= 3
    if uint8(stor2.field_0) == 3:
        require uint8(stor4.field_0) <= 3
        if uint8(stor4.field_0) == 3:
            Mask(96, 0, stor1.field_160) = 1
}

function Close(address arg1) {
    if msg.sender == stor0:
        uint8(stor2.field_0) = 2
        address(stor2.field_8) = arg1
    else:
        require msg.sender == address(stor1.field_0)
        uint8(stor4.field_0) = 2
        address(stor4.field_8) = arg1
    require uint8(stor2.field_0) <= 3
    if uint8(stor2.field_0) != 2:
    require uint8(stor4.field_0) <= 3
    if uint8(stor4.field_0) != 2:
    if address(stor2.field_8) != address(stor4.field_8):
    Mask(96, 0, stor1.field_160) = 0
    call address(stor2.field_8) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function Withdraw(address arg1, uint256 arg2) {
    require arg2 <= eth.balance(this.address)
    if msg.sender == stor0:
        uint8(stor2.field_0) = 1
        address(stor2.field_8) = arg1
        stor3 = arg2
    else:
        require msg.sender == address(stor1.field_0)
        uint8(stor4.field_0) = 1
        address(stor4.field_8) = arg1
        stor5 = arg2
    require uint8(stor2.field_0) <= 3
    if uint8(stor2.field_0) != 1:
    require uint8(stor4.field_0) <= 3
    if uint8(stor4.field_0) != 1:
    if stor3 != stor5:
    if address(stor2.field_8) != address(stor4.field_8):
    uint8(stor2.field_0) = 0
    uint8(stor4.field_0) = 0
    call address(stor2.field_8) with:
       value stor3 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



// =====================  Runtime code  =====================




}
