contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[87 len 1385]
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

function sub_4266049a(?) payable {
    create contract with 0 wei
                    code: code.data[710 len 675]
    require create.new_address
    call address(create.new_address) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(address(create.new_address))
    call address(create.new_address).place() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x83197ef0 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
