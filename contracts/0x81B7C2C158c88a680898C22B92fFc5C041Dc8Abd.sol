contract main {




// =====================  Runtime code  =====================


const sub_2b2584f6(?) = 1

const proxyType = 2

const sub_788cd5fc(?) = 'StablePayBase'

const sub_7e84a4ff(?) = 2


uint8 version;
address _storageAddress; offset 16
array of struct targetId;

function sub_24a1dc8b(?) {
    return targetId[0 len targetId.length].field_0
}

function version() {
    return version
}

function targetId() {
    return targetId[0 len targetId.length].field_0
}

function _storage() {
    return _storageAddress
}

function implementation() {
    mem[96] = targetId.length
    mem[0] = 1
    mem[128] = uint256(targetId.field_0)
    idx = 128
    s = 0
    while targetId.length + 96 > idx:
        mem[idx + 32] = targetId[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(targetId.length) + 160] = 'contract.name'
    mem[ceil32(targetId.length) + 173 len floor32(targetId.length)] = mem[128 len floor32(targetId.length)]
    mem[ceil32(targetId.length) + floor32(targetId.length) + 173] = mem[floor32(targetId.length) + -targetId.length % 32 + 160 len targetId.length % 32] or Mask(8 * -targetId.length % 32 + 32, -(8 * -targetId.length % 32 + 32) + 256, mem[ceil32(targetId.length) + floor32(targetId.length) + 173])
    mem[targetId.length + ceil32(targetId.length) + 173 len floor32(targetId.length + 13)] = mem[ceil32(targetId.length) + 160 len floor32(targetId.length + 13)]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x21f8a721 with:
         gas gas_remaining wei
        args sha3(mem[ceil32(targetId.length) + 160 len floor32(targetId.length + 13)], mem[targetId.length + ceil32(targetId.length) + floor32(targetId.length + 13) + 173 len targetId.length + -floor32(targetId.length + 13) + 13])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function _fallback() payable {
    mem[96] = targetId.length
    mem[0] = 1
    mem[128] = uint256(targetId.field_0)
    idx = 128
    s = 0
    while targetId.length + 96 > idx:
        mem[idx + 32] = targetId[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(targetId.length) + 160] = 'contract.name'
    mem[ceil32(targetId.length) + 173 len floor32(targetId.length)] = mem[128 len floor32(targetId.length)]
    mem[ceil32(targetId.length) + floor32(targetId.length) + 173] = mem[floor32(targetId.length) + -targetId.length % 32 + 160 len targetId.length % 32] or Mask(8 * -targetId.length % 32 + 32, -(8 * -targetId.length % 32 + 32) + 256, mem[ceil32(targetId.length) + floor32(targetId.length) + 173])
    mem[targetId.length + ceil32(targetId.length) + 173 len floor32(targetId.length + 13)] = mem[ceil32(targetId.length) + 160 len floor32(targetId.length + 13)]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x21f8a721 with:
         gas gas_remaining wei
        args sha3(mem[ceil32(targetId.length) + 160 len floor32(targetId.length + 13)], mem[targetId.length + ceil32(targetId.length) + floor32(targetId.length + 13) + 173 len targetId.length + -floor32(targetId.length + 13) + 13])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        revert with 0, 'Target address != 0x0'
    require ext_code.size(ext_call.return_data[0]) > 0
    delegate ext_call.return_data[0] with:
       funct call.data[0 len 4]
         gas gas_remaining - 10000 wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
