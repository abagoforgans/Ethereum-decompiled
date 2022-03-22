contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = code.data[870 len 32]
    stor1 = code.data[902 len 32]
    stor2 = code.data[934 len 32]
    stor3 = code.data[966 len 32]
    return code.data[185 len 685]
}



// =====================  Runtime code  =====================


address sub_2757d570Address;
uint256 sub_371fa854;
address sub_99b24e0aAddress;
uint256 sub_237b3a10;

function sub_237b3a10(?) payable {
    return sub_237b3a10
}

function sub_2757d570(?) payable {
    return sub_2757d570Address
}

function sub_371fa854(?) payable {
    return sub_371fa854
}

function sub_99b24e0a(?) payable {
    return sub_99b24e0aAddress
}

function sub_8bcb7961(?) payable {
    sub_237b3a10 = arg1
}

function _fallback() payable {
    if sub_237b3a10 > 0:
        call sub_2757d570Address.splitDAO(uint256 rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args sub_371fa854, sub_99b24e0aAddress
        require ext_call.success
        sub_237b3a10--
}



}
