contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    require not msg.value
    stor0[address(msg.sender)] = 1
    return code.data[186 len 2449]
}



// =====================  Runtime code  =====================


mapping of uint256 stor0;
address sub_b7c68dc9Address;

function sub_b7c68dc9(?) {
    return sub_b7c68dc9Address
}

function _fallback() payable {
  stop
}

function addUser(address arg1) {
    require stor0[address(msg.sender)] == 1
    stor0[address(arg1)] = 1
}

function cashout() {
    require stor0[address(msg.sender)] == 1
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function deposit() {
    require stor0[address(msg.sender)] == 1
    call sub_b7c68dc9Address with:
       funct Mask(32, 224, sha3('deposit()')) >> 224
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
}

function withdraw(uint256 arg1) {
    require stor0[address(msg.sender)] == 1
    require ext_code.size(sub_b7c68dc9Address)
    call sub_b7c68dc9Address.w(uint256 rg1) with:
         gas 125000 wei
        args arg1
    require ext_call.success
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    require stor0[address(msg.sender)] == 1
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
