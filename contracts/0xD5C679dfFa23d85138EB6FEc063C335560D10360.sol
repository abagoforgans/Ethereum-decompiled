contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function destroy() {
    require msg.sender == stor0
    selfdestruct(stor0)
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
    call 0x695d1d0e2226ecd044a86a4381bfab7f0fe0d07a with:
       value 5 * 10^15 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args 0x27b1ccfc94f838b2580c5e2f76fc2aa6710f91b5, msg.sender, 100 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < 40:
        mem[96 len 515] = code.data[1042 len 515]
        create contract with 0 wei
                        code: code.data[1042 len 515]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
