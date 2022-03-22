contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint16 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor9;
address stor11;

function _fallback() payable {
    stor0 = 0xbb9bc244d798123fde783fcc1c72d3bb8c189413
    stor2 = 0
    stor3 = 0
    stor4 = 10 * 10^18
    stor5 = 0x270386a25efe8ed18d3508ad97e30d8607556d946ab419bf8927ec9e484495e6
    stor6 = 0xf32d90031fda796f2c8c61d0d96e5f36268ff2ba2d0b2382738d725572d0cf76
    stor9 = 0xbb9bc244d798123fde783fcc1c72d3bb8c189413
    stor11 = 0xcff2d88139c09d1321981c987dd77673f0343bf8
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[234 len 1270]
}



// =====================  Runtime code  =====================


address stor1;
uint8 stor3;
uint8 stor3; offset 8
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint256 stor8;
address stor9;
uint256 stor10;
address stor11;

function sub_9f1ccd52(?) payable {
    require stor1 == msg.sender
    stor7 = arg1
    uint256(stor8) = arg2 or Mask(96, 160, uint256(stor8))
    call stor9.vote(uint256 rg1, bool rg2) with:
         gas gas_remaining - 25050 wei
        args arg1, 1
    require ext_call.success
}

function sub_965d0afd(?) payable {
    require stor1 == msg.sender
    call stor9.balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call stor9.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args stor1, ext_call.return_data[0]
}

function sub_cdd02039(?) payable {
    require stor1 == msg.sender
    stor10 = arg1 or Mask(96, 160, stor10)
    call address(arg1).balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call address(arg1).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args stor1, ext_call.return_data[0]
}

function sub_2cd5f030(?) payable {
    require stor1 == msg.sender
    uint8(stor3.field_0) = 1
    call stor9.balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    if stor4 < ext_call.return_data[0]:
        require stor5 == sha3(stor11)
    if sha3(stor4) == stor6:
        call stor9.splitDAO(uint256 rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args stor7, address(stor8)
        require ext_call.success
}

function _fallback() payable {
    if uint8(stor3.field_0):
        if bool(uint8(stor3.field_8)) != 0:
            call stor9.balanceOf(address rg1) with:
                 gas gas_remaining - 25050 wei
                args this.address
            require ext_call.success
        else:
            uint8(stor3.field_8) = 1
            call stor9.splitDAO(uint256 rg1, address rg2) with:
                 gas gas_remaining - 25050 wei
                args stor7, address(stor8)
            require ext_call.success
            call stor9.balanceOf(address rg1) with:
                 gas gas_remaining - 25050 wei
                args this.address
        call stor9.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args stor11, ext_call.return_data[0]
}



}
