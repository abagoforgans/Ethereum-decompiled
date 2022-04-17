contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[20932 len 20]
    return code.data[188 len 20732]
}



// =====================  Runtime code  =====================


address owner;
address custodianAddress;

function custodian() {
    return custodianAddress
}

function owner() {
    return owner
}

function sub_b72b51cc(?) {
    require msg.sender == custodianAddress
    create contract with 0 wei
                    code: code.data[1416 len 19273], address(arg1), custodianAddress, address(arg2), arg3, arg4 << 224, arg5
    require create.new_address
    return address(create.new_address)
}

function Withdraw(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    if not arg1:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg2), arg3
    require ext_call.success
}

function _fallback() payable {
    if unknown_0x375b74c3(?????) == uint32(call.func_hash):
        require not msg.value
        return custodianAddress
    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash):
        require not msg.value
        return owner
    if uint32(call.func_hash) != unknown_0x9b1bfa7f(?????):
        require unknown_0xb72b51cc(?????) == uint32(call.func_hash)
        require not msg.value
        require msg.sender == custodianAddress
        create contract with 0 wei
                        code: code.data[1416 len 19273], address(arg1), custodianAddress, address(arg2), arg3, arg4 << 224, arg5
        require create.new_address
        return address(create.new_address)
    require not msg.value
    require msg.sender == owner
    if not arg1:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg2), arg3
    require ext_call.success
}



}
