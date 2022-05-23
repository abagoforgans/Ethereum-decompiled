contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function withdraw() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_22fce380(?) payable {
    require ext_code.size(0x7b20471396cedf00cd1f65eca27fdb3ca1643b6c)
    call 0x7b20471396cedf00cd1f65eca27fdb3ca1643b6c.0x11a09ae7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    idx = 0
    s = 0
    while idx < arg2:
        create contract with 100000000000000000 wei
                        code: arg1[all]
        mem[ceil32(arg1.length) + 128] = idx
        mem[ceil32(arg1.length) + 160] = address(create.new_address)
        emit 0x1c57f93b: idx, address(create.new_address)
        if not address(create.new_address):
            idx = idx + 1
            s = create.new_address
            continue 
        return address(create.new_address)
    return address(r * arg2)
}



}
