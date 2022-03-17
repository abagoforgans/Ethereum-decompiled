contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0xd86c1fc8ce98d66d754a1a9f34fda5ecdf9b3514
    stor1 = 0
    call stor0.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 0, 96, 160, 3, 'URL', 251, code.data[682 len 251], mem[543 len 5]
    require ext_call.success
    return code.data[332 len 350]
}



// =====================  Runtime code  =====================


address stor0;
uint256 sub_2684d75f;

function sub_2684d75f(?) payable {
    return sub_2684d75f
}

function _fallback() payable {
    call stor0.0x4c773795 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
    selfdestruct(0x47a8033cc6d6ca2ed5044674fd421f44884de8)
}



}
