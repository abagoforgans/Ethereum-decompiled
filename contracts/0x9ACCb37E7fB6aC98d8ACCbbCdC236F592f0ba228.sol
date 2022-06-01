contract main {




// =====================  Runtime code  =====================


address stor0;

function destroy() {
    require msg.sender == stor0
    selfdestruct(0x808284ad89f21c512f9a5d43ad24aaf79780849a)
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.value >= 5 * 10^15
    call 0xdebaf1f7c97687456ae232a111c8547db633944e with:
       value 5 * 10^15 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < 40:
        mem[96 len 360] = code.data[459 len 360]
        create contract with 0 wei
                        code: code.data[459 len 360]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
