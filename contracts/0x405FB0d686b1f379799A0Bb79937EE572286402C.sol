contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0xda81a293915b4aff0ed8ffa98dbea08a8122266d
    stor1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    require not msg.value
    return code.data[200 len 2399]
}



// =====================  Runtime code  =====================


address minterAddress;
address sub_b7c68dc9Address;

function minter() {
    return minterAddress
}

function sub_b7c68dc9(?) {
    return sub_b7c68dc9Address
}

function _fallback() payable {
  stop
}

function cashout() {
    require msg.sender == minterAddress
    call minterAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function deposit() {
    require msg.sender == minterAddress
    require ext_code.size(sub_b7c68dc9Address)
    call sub_b7c68dc9Address.d() with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
}

function withdraw(uint256 arg1) {
    require msg.sender == minterAddress
    require ext_code.size(sub_b7c68dc9Address)
    call sub_b7c68dc9Address.w(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    require msg.sender == minterAddress
    require ext_code.size(sub_b7c68dc9Address)
    call sub_b7c68dc9Address.0x88df15b4 with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11, this.address
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(sub_b7c68dc9Address)
        call sub_b7c68dc9Address.0xa7fe276 with:
             gas 125000 wei
            args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11
        require ext_call.success
}



}
