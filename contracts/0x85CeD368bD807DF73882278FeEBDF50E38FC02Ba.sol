contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 0xfa5186a0af28454ba31bfc7b1100880b01b2051d
    stor2 = 5
    call stor0.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 120, 96, 160, 3, 'URL', 251, code.data[866 len 251], mem[543 len 5]
    require ext_call.success
    stor1 = ext_call.return_data[0]
    return code.data[340 len 526]
}



// =====================  Runtime code  =====================


address stor0;
uint256 sub_b11558ee;
uint256 lol;

function lol() payable {
    return lol
}

function sub_b11558ee(?) payable {
    return sub_b11558ee
}

function kill() payable {
    if 0x47a8033cc6d6ca2ed5044674fd421f44884de8 != msg.sender:
    selfdestruct(0x47a8033cc6d6ca2ed5044674fd421f44884de8)
}

function _fallback() payable {
    call stor0.0x4c773795 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        lol++
}



}
