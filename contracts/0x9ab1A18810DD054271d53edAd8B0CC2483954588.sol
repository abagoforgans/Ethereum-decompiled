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
    call arg1.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    if msg.value > 0:
        call 0x175e8ca2a7ad4f205688a6896daa572733e0b6e1 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < 40:
        mem[96 len 384] = code.data[938 len 384]
        create contract with 0 wei
                        code: code.data[938 len 384]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: code.data[1322 len 404]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[1322 len 404]
}



}
