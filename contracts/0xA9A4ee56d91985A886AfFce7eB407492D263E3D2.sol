contract main {




// =====================  Runtime code  =====================


const TLD_NODE = 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae


address hashRegistrarAddress;
address sub_565b052bAddress;
address previousRegistrarAddress;
address sub_3c9b51b4Address;

function hashRegistrar() {
    return hashRegistrarAddress
}

function sub_3c9b51b4(?) {
    return sub_3c9b51b4Address
}

function sub_565b052b(?) {
    return sub_565b052bAddress
}

function previousRegistrar() {
    return previousRegistrarAddress
}

function _fallback() payable {
  stop
}

function configureDomainFor(string arg1, uint256 arg2, uint256 arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == previousRegistrarAddress
    require ext_code.size(hashRegistrarAddress)
    staticcall hashRegistrarAddress.entries(bytes32 arg1) with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).value() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(hashRegistrarAddress)
    call hashRegistrarAddress.transferRegistrars(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_565b052bAddress)
    call sub_565b052bAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_3c9b51b4Address, sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg4 with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(sub_3c9b51b4Address)
    call sub_3c9b51b4Address with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all]), arg2, arg3, address(arg4), address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
