contract main {




// =====================  Runtime code  =====================


const sub_028880e3(?) = 48

const sub_0bb4bbe9(?) = 1

const sub_4db39a0d(?) = 48

const sub_66bc57b3(?) = 1

const sub_6abd2fd3(?) = 3

const sub_73aa96ba(?) = 1

const sub_78d13d35(?) = 768


bool stor0;
uint256 features;
mapping of bool userRoles;
mapping of uint8 stor2;
address sub_1ddc496eAddress;
address sub_eddd8d56Address;
address sub_b9257240Address;
address sub_0b9a6518Address;

function sub_0b9a6518(?) {
    return sub_0b9a6518Address
}

function sub_1ddc496e(?) {
    return sub_1ddc496eAddress
}

function features() {
    return uint256(features)
}

function userRoles(address arg1) {
    return uint256(userRoles[arg1])
}

function sub_b9257240(?) {
    return sub_b9257240Address
}

function sub_eddd8d56(?) {
    return sub_eddd8d56Address
}

function _fallback() payable {
    revert
}

function isFeatureEnabled(uint256 arg1) {
    return (arg1 and uint256(features) == arg1)
}

function isSenderInRole(uint256 arg1) {
    return (arg1 and uint256(userRoles[address(msg.sender)]) == arg1)
}

function isOperatorInRole(address arg1, uint256 arg2) {
    return (arg2 and uint256(userRoles[address(arg1)]) == arg2)
}

function sub_0d441a4a(?) {
    require bool(userRoles[address(msg.sender)]) == 1
    require stor2[arg1]
    stor2[arg1] = 0
    emit 0x48a5ccf3: msg.sender, arg1
}

function sub_6aadd871(?) {
    require bool(userRoles[address(msg.sender)]) == 1
    require not stor2[arg1]
    stor2[arg1] = uint8(arg2 + 1)
    emit 0xc52436c0: arg2, msg.sender, arg1
}

function evaluateBy(address arg1, uint256 arg2, uint256 arg3) {
    return (arg3 and uint256(userRoles[address(arg1)]) or arg2 and uint256(userRoles[address(arg1)]) and arg3 xor -1 xor -1)
}

function updateFeatures(uint256 arg1) {
    require Mask(1, 29, uint256(userRoles[address(msg.sender)])) == 536870912
    uint256(features) = arg1 and uint256(userRoles[address(msg.sender)]) or uint256(features) and uint256(userRoles[address(msg.sender)]) and arg1 xor -1 xor -1
    emit FeaturesUpdated(arg1, arg1 and uint256(userRoles[address(msg.sender)]) or uint256(features) and uint256(userRoles[address(msg.sender)]) and arg1 xor -1 xor -1, msg.sender);
}

function sub_51327c29(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require bool(userRoles[address(msg.sender)]) == 1
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 2
        stor2[mem[(32 * idx) + 128]] = 0
        require idx < arg1.length
        emit 0x48a5ccf3: msg.sender, mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function updateRole(address arg1, uint256 arg2) {
    require Mask(1, 28, uint256(userRoles[address(msg.sender)])) == 268435456
    uint256(userRoles[address(arg1)]) = arg2 and uint256(userRoles[address(msg.sender)]) or uint256(userRoles[address(arg1)]) and uint256(userRoles[address(msg.sender)]) and arg2 xor -1 xor -1
    emit RoleUpdated(arg2, arg2 and uint256(userRoles[address(msg.sender)]) or uint256(userRoles[address(arg1)]) and uint256(userRoles[address(msg.sender)]) and arg2 xor -1 xor -1, msg.sender, arg1);
}

function sub_dd30fd14(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require bool(userRoles[address(msg.sender)]) == 1
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 2
        stor2[mem[(32 * idx) + 128]] = uint8(arg2 + 1)
        require idx < arg1.length
        _16 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit 0xc52436c0: arg2, msg.sender, _16
        idx = idx + 1
        continue 
}

function sub_bbf656a8(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128]
    mem[ceil32(arg1.length) + 128] = uint8(stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] - 1)
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function useCoupon(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require bool(stor0) == 1
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128]
    _29 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    mem[0] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] = 0
    mem[ceil32(arg1.length) + 132] = uint8(stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] - 1)
    require ext_code.size(sub_0b9a6518Address)
    call sub_0b9a6518Address.0x359a33fc with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 132], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_eddd8d56Address)
    call sub_eddd8d56Address.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8(ext_call.return_data[32]):
        require ext_code.size(sub_b9257240Address)
        call sub_b9257240Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, uint8(ext_call.return_data[32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_1ddc496eAddress)
    call sub_1ddc496eAddress.0x6e65b51a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa64ea80b: stor2[mem[0]] - 1 << 248, 0, 0, msg.sender, _29
}



}
