contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0xd594150f1bc11924715cbc2f201227c85bcf09d5
    stor1 = 0
    require not msg.value
    return code.data[72 len 343]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function _fallback() {
    require ext_code.size(stor0)
    call stor0.0x4bb278f3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0xeaa0e760 with:
         gas gas_remaining - 710 wei
        args stor1, stor1 + 1
    require ext_call.success
    stor1++
}



}
