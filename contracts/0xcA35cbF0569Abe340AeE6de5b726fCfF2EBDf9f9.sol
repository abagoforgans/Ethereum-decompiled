contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor3;

function _fallback() payable {
    stor0 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    stor1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    require not msg.value
    stor3 = msg.sender
    return code.data[124 len 2370]
}



// =====================  Runtime code  =====================


address sub_9c927b2dAddress;
address sub_caa54b91Address;
address account;
address owner;

function account() {
    return account
}

function owner() {
    return owner
}

function sub_9c927b2d(?) {
    return sub_9c927b2dAddress
}

function sub_caa54b91(?) {
    return sub_caa54b91Address
}

function _fallback() payable {
  stop
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sendEther(uint256 arg1, address arg2) {
    require owner == msg.sender
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function deposit(uint256 arg1) {
    require owner == msg.sender
    call sub_9c927b2dAddress with:
       funct Mask(32, 224, sha3('deposit()')) >> 224
         gas gas_remaining - 25710 wei
}

function sub_6a1c7590(?) {
    require owner == msg.sender
    call sub_9c927b2dAddress with:
       funct Mask(32, 224, 'deposit') >> 224
         gas 30000 wei
        args Mask(224, 0, 'deposit')
}

function sub_c12f399d(?) {
    require owner == msg.sender
    call sub_9c927b2dAddress with:
       funct Mask(32, 224, 'deposit()') >> 224
         gas 30000 wei
        args Mask(224, 0, 'deposit()')
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(sub_caa54b91Address)
    call sub_caa54b91Address.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sendTokens(address arg1, uint256 arg2, address arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg3), arg2
    require ext_call.success
}

function withdrawToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(sub_caa54b91Address)
    call sub_caa54b91Address.0x9e281a98 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function depositToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args sub_9c927b2dAddress, arg2
    require ext_call.success
    require ext_code.size(sub_caa54b91Address)
    call sub_caa54b91Address.0x338b5dea with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    require owner == msg.sender
    require ext_code.size(sub_caa54b91Address)
    call sub_caa54b91Address.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11, this.address
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_caa54b91Address)
    call sub_caa54b91Address.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11
    require ext_call.success
}



}
