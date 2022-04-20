contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x8bbf4dd0f11b3a535660fd7fcb7158daebd3a17e
    require not msg.value
    return code.data[68 len 499]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    idx = 0
    while idx < 40:
        mem[96] = 0xa8faf6f000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        call stor0.SmartAirdrop() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        idx = idx + 1
        continue 
}

function retrieve() {
    require ext_code.size(stor0)
    call stor0.balanceOf(address rg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 0xa34c6bcae6f46ac6470443ccea67d937f6060c7e, ext_call.return_data[0]
    require ext_call.success
}



}
