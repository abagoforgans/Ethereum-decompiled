contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
address stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = 0
    stor4 = 0
    stor2 = 0
    stor1 = 0
    return code.data[77 len 1498]
}



// =====================  Runtime code  =====================


address stor0;
uint128 stor1; offset 160
address stor1;
uint256 stor1;
uint256 stor2;
uint128 stor3; offset 160
address stor3;
uint256 stor3;
uint8 stor4; offset 160
address stor4;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function destroy() payable {
    require stor0 == msg.sender
    if address(stor1.field_0) != 0:
        require stor0 == msg.sender
        require address(stor1.field_0) != 0
        require stor2 != 0
        require address(stor3.field_0) != 0
        call address(stor1.field_0).balanceOf(address rg1) with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        call address(stor1.field_0).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args address(stor4.field_0), ext_call.return_data[0]
    selfdestruct(stor0)
}

function disable() payable {
    require msg.sender == stor0
    uint8(stor4.field_160) = 0
}

function setRecipient(address arg1) payable {
    require msg.sender == stor0
    uint256(stor4.field_0) = arg1 or Mask(96, 160, uint256(stor4.field_0))
}

function sub_df17097a(?) payable {
    require stor0 == msg.sender
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    stor2 = arg1
    uint256(stor3.field_0) = Mask(96, 0, stor3.field_160)
}

function enable() payable {
    require stor0 == msg.sender
    require address(stor1.field_0) != 0
    require stor2 != 0
    require address(stor3.field_0) != 0
    require address(stor4.field_0) != 0
    uint8(stor4.field_160) = 1
}

function vote() payable {
    require msg.sender == stor0
    require address(stor1.field_0) != 0
    require stor2 != 0
    require address(stor3.field_0) != 0
    call address(stor1.field_0).vote(uint256 rg1, bool rg2) with:
         gas gas_remaining - 25050 wei
        args stor2, 1
    require ext_call.success
    return ext_call.return_data[0]
}

function start(uint256 arg1) payable {
    require stor0 == msg.sender
    require address(stor1.field_0) != 0
    require stor2 != 0
    require address(stor3.field_0) != 0
    stor6 = arg1
    stor5 = 0
    call address(stor1.field_0).splitDAO(uint256 rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args stor2, address(stor3.field_0)
    require ext_call.success
}

function transfer(address arg1) payable {
    require stor0 == msg.sender
    require address(stor1.field_0) != 0
    require stor2 != 0
    require address(stor3.field_0) != 0
    call address(stor1.field_0).balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call address(stor1.field_0).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), ext_call.return_data[0]
}

function _fallback() payable {
    if uint8(stor4.field_160):
        if stor5 < stor6:
            stor5++
            call address(stor1.field_0).splitDAO(uint256 rg1, address rg2) with:
                 gas gas_remaining - 25050 wei
                args stor2, address(stor3.field_0)
            require ext_call.success
        else:
            require stor0 == msg.sender
            require address(stor1.field_0) != 0
            require stor2 != 0
            require address(stor3.field_0) != 0
            call address(stor1.field_0).balanceOf(address rg1) with:
                 gas gas_remaining - 25050 wei
                args this.address
            require ext_call.success
            call address(stor1.field_0).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args address(stor4.field_0), ext_call.return_data[0]
    return 1
}



}
