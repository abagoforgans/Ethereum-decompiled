contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = 0xff7f39512eae77bb779d9371ae4957ccfada8070
    stor1 = 0
    stor3 = 5
    call stor0.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 0, 96, 160, 3, 'URL', 251, code.data[785 len 251], mem[543 len 5]
    require ext_call.success
    stor2 = ext_call.return_data[0]
    return code.data[348 len 437]
}



// =====================  Runtime code  =====================


address stor0;
uint256 sub_2684d75f;
uint256 sub_b11558ee;
uint256 lol;

function sub_2684d75f(?) payable {
    return sub_2684d75f
}

function lol() payable {
    return lol
}

function sub_b11558ee(?) payable {
    return sub_b11558ee
}

function _fallback() payable {
    call stor0.0x4c773795 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        lol++
}



}
