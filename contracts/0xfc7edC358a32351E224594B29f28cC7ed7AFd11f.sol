contract main {




// =====================  Runtime code  =====================


const sub_67447886(?) = 31564

const sub_7d09e992(?) = 32231

const sub_cbdee551(?) = 7901


address tokenContractAddress;
mapping of uint8 stor1;
mapping of uint8 stor2;
address sub_f69741a3Address;

function tokenContract() {
    return tokenContractAddress
}

function usedNonces(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function signers(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_f69741a3(?) {
    return sub_f69741a3Address
}

function _fallback() payable {
  stop
}

function sub_8ad3308e(?) {
    require calldata.size - 4 >= 32
    if sub_f69741a3Address != msg.sender:
        revert with 0, 'Unauthorized access'
    sub_f69741a3Address = arg1
}

function sub_47bae6f5(?) {
    require calldata.size - 4 >= 64
    if sub_f69741a3Address != msg.sender:
        revert with 0, 'Unauthorized access'
    stor1[address(arg1)] = uint8(arg2)
}

function withdrawEthers(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_f69741a3Address != msg.sender:
        revert with 0, 'Unauthorized access'
    call sub_f69741a3Address with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_f69741a3Address != msg.sender:
        revert with 0, 'Unauthorized access'
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_f69741a3Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getSigner(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(0xeaaa3e2b1e6602068b710ddb9a26b67fc08241bc)
    delegate 0xeaaa3e2b1e6602068b710ddb9a26b67fc08241bc.0x0 with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=arg2[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + 128] = delegate.return_data[12 len 20]
    return 0, 
           Mask(8 * -ceil32(arg2.length) + arg2.length + 28, 0, 0),
           mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_4940f8b6(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if stor2[arg1]:
        revert with 0, 'Nonce already used'
    require gas_remaining + 31564 >= gas_remaining
    mem[ceil32(arg4.length) + 160] = arg1
    mem[ceil32(arg4.length) + 192] = address(this.address)
    mem[ceil32(arg4.length) + 212] = address(arg2)
    mem[ceil32(arg4.length) + 232] = arg3
    mem[ceil32(arg4.length) + 128] = 104
    _8 = sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]])
    require ext_code.size(0xeaaa3e2b1e6602068b710ddb9a26b67fc08241bc)
    delegate 0xeaaa3e2b1e6602068b710ddb9a26b67fc08241bc.prefixedRecover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args _8, Array(len=arg4.length, data=arg4[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor1[delegate.return_data[12 len 20]]:
        revert with 0, 'Invalid authorization signature or signer'
    stor2[arg1] = 1
    call arg2 with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require gas_remaining <= gas_remaining + 31564
    require 39465 * block.gasprice / 39465 == block.gasprice
    call msg.sender with:
       value 39465 * block.gasprice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2a7ec130(?) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if stor2[arg1]:
        revert with 0, 'Nonce already used'
    require gas_remaining + 32231 >= gas_remaining
    mem[ceil32(arg5.length) + 160] = arg1
    mem[ceil32(arg5.length) + 192] = address(this.address)
    mem[ceil32(arg5.length) + 212] = address(arg2)
    mem[ceil32(arg5.length) + 232] = arg3
    mem[ceil32(arg5.length) + 264] = arg4
    mem[ceil32(arg5.length) + 128] = 136
    _8 = sha3(mem[ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]])
    require ext_code.size(0xeaaa3e2b1e6602068b710ddb9a26b67fc08241bc)
    delegate 0xeaaa3e2b1e6602068b710ddb9a26b67fc08241bc.prefixedRecover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args _8, Array(len=arg5.length, data=arg5[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor1[delegate.return_data[12 len 20]]:
        revert with 0, 'Invalid authorization signature or signer'
    stor2[arg1] = 1
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg2 with:
       value arg4 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require gas_remaining <= gas_remaining + 32231
    require 40132 * block.gasprice / 40132 == block.gasprice
    call msg.sender with:
       value 40132 * block.gasprice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
