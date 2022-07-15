contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
mapping of uint8 stor5;

function _fallback() payable {
    revert
}

function sub_2a82e6b8(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x3da1c0c3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_63c8b86b(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x3da1c0c3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_683a8fa9(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor4)
    staticcall stor4.0x3da1c0c3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_aa52dc4a(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x7beeb945 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_f87e9d25(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x3da1c0c3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.getOwnerAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == arg1)
}

function isAgent(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x7beeb945 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x7beeb945 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isAsset(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor4)
    staticcall stor4.0x7beeb945 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isTrader(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x7beeb945 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_3eb6202e(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(address(arg1), 5)
        if not stor5[address(arg1)][mem[(32 * idx) + 128]]:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function add(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.0x7beeb945 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Address is not a verified Admin.'
    require ext_code.size(stor1)
    staticcall stor1.0x3da1c0c3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Address is not a verified Admin.'
    stor5[address(arg1)][arg2] = 1
}

function remove(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.0x7beeb945 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Address is not a verified Admin.'
    require ext_code.size(stor1)
    staticcall stor1.0x3da1c0c3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Address is not a verified Admin.'
    stor5[address(arg1)][arg2] = 0
}



}
