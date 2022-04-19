contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1274]




// =====================  Runtime code  =====================


address stor0;

function sub_b47b782b(?) {
    stor0 = arg1
}

function getHash(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.hashFirst() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.hashesSize() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.hashes(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (arg1 - ext_call.return_data[0] / 10 % ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.hashesSize() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    if arg1 - ext_call.return_data[0] / 10 / ext_call.return_data[0] != Mask(16, 240, ext_call.return_data[0]) >> 240:
        return 16777216
    require ext_code.size(stor0)
    call stor0.hashFirst() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[0] / 2^(24 * arg1 - ext_call.return_data[0] % 10) % 16777216)
}

function _fallback() payable {
    if uint32(call.func_hash) != unknown_0x6b2fafa9(?????):
        require unknown_0xb47b782b(?????) == uint32(call.func_hash)
        require not msg.value
        stor0 = address(arg1)
    require not msg.value
    require ext_code.size(stor0)
    call stor0.hashFirst() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.hashesSize() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.hashes(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (arg1 - ext_call.return_data[0] / 10 % ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.hashesSize() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    if arg1 - ext_call.return_data[0] / 10 / ext_call.return_data[0] != Mask(16, 240, ext_call.return_data[0]) >> 240:
        return 16777216
    require ext_code.size(stor0)
    call stor0.hashFirst() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[0] / 2^(24 * arg1 - ext_call.return_data[0] % 10) % 16777216)
}



}
