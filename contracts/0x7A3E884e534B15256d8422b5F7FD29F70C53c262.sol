contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function charge(uint256 arg1) payable {
    create contract with 0 wei
                    code: code.data[604 len 309]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = address(create.new_address)
    require arg1
    idx = 0
    while idx < arg1:
        mem[96] = 0x8a65913200000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x8a659132 with:
           value msg.value / arg1 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
