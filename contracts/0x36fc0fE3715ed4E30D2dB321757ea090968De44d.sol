contract main {




// =====================  Runtime code  =====================


array of struct bytecode;
uint256 hash;
address sub_03ae2e83Address;

function sub_03ae2e83(?) {
    return sub_03ae2e83Address
}

function hash() {
    return hash
}

function bytecode() {
    return bytecode[0 len bytecode.length].field_0
}

function _fallback() payable {
    revert
}

function marmoOf(address arg1) {
    require calldata.size - 4 >= 32
    return address(sha3(0, Mask(160, 96, this.address) >> 96, address(arg1), hash))
}

function reveal(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = uint256(bytecode.field_0)
    idx = 128
    s = 0
    while bytecode.length + 96 > idx:
        mem[idx + 32] = bytecode[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    create2 contract with 0 wei
                    salt: arg1
                    code: mem[128 len bytecode.length]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0x19ab453c with:
       value msg.value wei
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
