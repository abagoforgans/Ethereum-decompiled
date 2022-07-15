contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
array of address get;
address stor6;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function size() {
    return get.length
}

function get(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < get.length
    return get[arg1]
}

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

function create(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    create contract with 0 wei
                    code: code.data[2261 len 6780], stor6, address(arg1), arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    get.length++
    stor36B6[stor5.length] = address(create.new_address)
    emit ContractCreated(msg.sender, address(create.new_address));
    return address(create.new_address)
}



}
