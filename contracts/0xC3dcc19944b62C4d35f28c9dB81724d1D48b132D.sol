contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = code.data[671 len 32]
    stor1 = code.data[703 len 32]
    stor2 = code.data[735 len 32] or Mask(96, 160, stor2)
    stor3 = code.data[767 len 32]
    return code.data[90 len 581]
}



// =====================  Runtime code  =====================


address sub_2757d570Address;
uint256 stor0;
uint256 sub_371fa854;
address sub_99b24e0aAddress;
uint256 stor2;
uint256 sub_237b3a10;

function sub_237b3a10(?) payable {
    return sub_237b3a10
}

function sub_2757d570(?) payable {
    return address(sub_2757d570Address)
}

function sub_371fa854(?) payable {
    return sub_371fa854
}

function sub_99b24e0a(?) payable {
    return address(sub_99b24e0aAddress)
}

function sub_8bcb7961(?) payable {
    sub_237b3a10 = arg1
}

function vote() payable {
    call address(sub_2757d570Address).vote(uint256 rg1, bool rg2) with:
         gas gas_remaining - 25050 wei
        args sub_371fa854, 1
    require ext_call.success
}

function sub_232d6cef(?) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    sub_371fa854 = arg2
    uint256(stor2) = arg3 or Mask(96, 160, uint256(stor2))
    sub_237b3a10 = arg4
}

function split() payable {
    call address(sub_2757d570Address).splitDAO(uint256 rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args sub_371fa854, address(sub_99b24e0aAddress)
    require ext_call.success
}

function _fallback() payable {
    if sub_237b3a10 > 0:
        call address(sub_2757d570Address).splitDAO(uint256 rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args sub_371fa854, address(sub_99b24e0aAddress)
        require ext_call.success
        sub_237b3a10--
    return 1
}



}
