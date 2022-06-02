contract main {




// =====================  Runtime code  =====================


const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000

const sub_6e63d109(?) = 0xd48445ff00000000000000000000000000000000000000000000000000000000


address owner;
mapping of uint8 stor1;
uint256 sub_420c6a2c;
uint256 price;
address beneficiaryAddress;

function supportsInterface(bytes4 arg1) {
    return bool(stor1[Mask(32, 224, arg1)])
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_420c6a2c(?) {
    return sub_420c6a2c
}

function owner() {
    return owner
}

function price() {
    return price
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function name(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    _34 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length) + 160
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length
    mem[0] = _34
    mem[ceil32(arg1.length) + 160] = stor[sha3(_34)]
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[_34].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3(_34) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
    _67 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 64 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not _67 % 32:
        return 32, mem[mem[64] + 32 len _67 + 32]
    mem[floor32(_67) + mem[64] + 64] = mem[floor32(_67) + mem[64] + -(_67 % 32) + 96 len _67 % 32]
    return 32, mem[mem[64] + 32 len floor32(_67) + 64]
}

function sub_b649c913(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 192] = 2
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][] = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 192] = 3
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][] = Array(len=arg3.length, data=arg3[all])
}

function description(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if arg1.length >= 32:
        mem[ceil32(arg1.length) + 128] = mem[128]
        mem[ceil32(arg1.length) + 160 len floor32(arg1.length - 32)] = mem[160 len floor32(arg1.length - 32)]
        mem[ceil32(arg1.length) + floor32(arg1.length - 32) + 160] = !(256^(-arg1.length + floor32(arg1.length - 32) + 64) - 1) and mem[floor32(arg1.length - 32) + 160] or 256^(-arg1.length + floor32(arg1.length - 32) + 64) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length - 32) + 160]
        mem[arg1.length + ceil32(arg1.length) + 128] = 3
        _63 = sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])
        mem[64] = ceil32(arg1.length) + ceil32(stor[sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])].length) + 160
        mem[ceil32(arg1.length) + 128] = stor[sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])].length
        mem[0] = _63
        mem[ceil32(arg1.length) + 160] = stor[sha3(_63)]
        idx = ceil32(arg1.length) + 160
        s = 0
        while ceil32(arg1.length) + stor[_63].length + 128 > idx:
            mem[idx + 32] = stor[s + sha3(_63) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor[_63].length
        mem[mem[64] + 64 len ceil32(stor[_63].length)] = mem[ceil32(arg1.length) + 160 len ceil32(stor[_63].length)]
        return Array(len=stor[_63].length, data=mem[mem[64] + 64 len stor[_63].length])
    mem[ceil32(arg1.length) + 128] = !(256^(-arg1.length + 32) - 1) and mem[128] or 256^(-arg1.length + 32) - 1 and mem[ceil32(arg1.length) + 128]
    mem[arg1.length + ceil32(arg1.length) + 128] = 3
    _7 = sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])
    mem[64] = ceil32(arg1.length) + ceil32(stor[sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])].length) + 160
    mem[ceil32(arg1.length) + 128] = stor[sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])].length
    mem[0] = _7
    mem[ceil32(arg1.length) + 160] = stor[sha3(_7)]
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[_7].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3(_7) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    _70 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
    _72 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 64 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not _72 % 32:
        return 32, mem[mem[64] + 32 len _72 + 32]
    mem[floor32(_72) + mem[64] + 64] = mem[floor32(_72) + mem[64] + -(_72 % 32) + 96 len _72 % 32]
    return memory
      from mem[64]
       len floor32(_72) + _70 + -mem[64] + 96
}

function sub_6535b4a5(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    require sub_420c6a2c == sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 192] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    create contract with 0 wei
                    code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg2.length + arg1.length]
    if not address(create.new_address):
        revert with 0, 'Cannot instantiate contract'
    require ext_code.size(address(create.new_address))
    call address(create.new_address).supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x1ffc9a700000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x6125ede500000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if price > 0:
        require msg.value == price
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x4b9699a1: msg.sender, address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x6e30192500000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x4c8123d00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0xa0d0304b00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return address(create.new_address)
}



}
