contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    require not msg.value
    stor0[address(msg.sender)] = 1
    return code.data[186 len 2509]
}



// =====================  Runtime code  =====================


mapping of uint256 sub_986a4c98;
address sub_b7c68dc9Address;

function sub_986a4c98(?) {
    return sub_986a4c98[arg1]
}

function sub_b7c68dc9(?) {
    return sub_b7c68dc9Address
}

function _fallback() payable {
  stop
}

function addUser(address arg1) {
    require sub_986a4c98[address(msg.sender)] == 1
    sub_986a4c98[address(arg1)] = 1
}

function cashout() {
    require sub_986a4c98[address(msg.sender)] == 1
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw(uint256 arg1) {
    require sub_986a4c98[address(msg.sender)] == 1
    require ext_code.size(sub_b7c68dc9Address)
    call sub_b7c68dc9Address.0x2e1a7d4d with:
         gas 125000 wei
        args arg1
    require ext_call.success
}

function deposit() {
    require sub_986a4c98[address(msg.sender)] == 1
    require ext_code.size(sub_b7c68dc9Address)
    call sub_b7c68dc9Address.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas 125000 wei
    require ext_call.success
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    require sub_986a4c98[address(msg.sender)] == 1
    require ext_code.size(sub_b7c68dc9Address)
    call sub_b7c68dc9Address.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11, this.address
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(sub_b7c68dc9Address)
        call sub_b7c68dc9Address.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas 125000 wei
            args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11
        require ext_call.success
}



}
