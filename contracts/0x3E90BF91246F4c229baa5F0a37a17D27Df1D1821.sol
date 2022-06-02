contract main {




// =====================  Runtime code  =====================


address stor0;

function destroy() {
    require stor0 != msg.sender
    selfdestruct(0x175e8ca2a7ad4f205688a6896daa572733e0b6e1)
}

function withdraw(address arg1) {
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawForeignTokens(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    require msg.value >= 2 * 10^15
    call 0x175e8ca2a7ad4f205688a6896daa572733e0b6e1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < 40:
        mem[96 len 382] = code.data[912 len 382]
        create contract with 0 wei
                        code: code.data[912 len 382]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: code.data[1294 len 402]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
}



}
