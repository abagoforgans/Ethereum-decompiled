contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[87 len 1515]
}



// =====================  Runtime code  =====================


address stor0;

function destroy() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_3d647fe1(?) payable {
    s = 0
    while eth.balance(this.address) > arg1:
        mem[96 len 675] = code.data[840 len 675]
        create contract with 0 wei
                        code: code.data[840 len 675]
        require create.new_address
        call address(create.new_address) with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(address(create.new_address))
        call address(create.new_address).place() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        mem[96] = 0x83197ef000000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x83197ef0 with:
             gas gas_remaining - 50 wei
        require ext_call.success
        call stor0 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        s = create.new_address
        continue 
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
    revert 
}



}
