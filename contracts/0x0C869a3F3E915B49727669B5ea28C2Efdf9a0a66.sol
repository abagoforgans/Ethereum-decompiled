contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address owner;
uint256 sub_32a87086;
array of struct registry;
uint256 sub_86fa5063;
mapping of uint8 stor5;
array of uint256 sub_19ed8db1;
address sub_ccb27bcbAddress;

function sub_0f984711(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_0f984711[address(arg1)].field_1280)
}

function sub_19ed8db1(?) {
    return sub_19ed8db1[0 len sub_19ed8db1.length]
}

function contributors(address arg1) {
    require calldata.size - 4 >= 32
    return address(sub_0f984711[arg1].field_0), 
           uint256(sub_0f984711[arg1].field_256),
           uint256(sub_0f984711[arg1].field_512),
           uint256(sub_0f984711[arg1].field_768),
           uint256(sub_0f984711[arg1].field_1024)
}

function sub_32a87086(?) {
    return sub_32a87086
}

function admins(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function getStatus(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_0f984711[address(arg1)].field_1280)
    require arg2 < uint256(sub_0f984711[address(arg1)].field_1280)
    mem[128] = uint256(stor[sha3((4 * arg2) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_0f984711', 6))) + 1)].field_0)
    idx = 128
    s = 0
    while stor[(4 * arg2) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_0f984711', 6))) + 1].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg2) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_0f984711', 6))) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if arg2 < uint256(sub_0f984711[address(arg1)].field_1280):
        if arg2 < uint256(sub_0f984711[address(arg1)].field_1280):
            return address(stor[(4 * arg2) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_0f984711', 6)))].field_0), 
                   Array(len=stor[(4 * arg2) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_0f984711', 6))) + 1].length, data=mem[128 len stor[(4 * arg2) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_0f984711', 6))) + 1].length]),
                   uint256(stor[(4 * arg2) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_0f984711', 6)))].field_512),
                   uint256(stor[(4 * arg2) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_0f984711', 6)))].field_768)
    revert
}

function registry(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < registry.length
    return address(registry[arg1].field_0)
}

function sub_86fa5063(?) {
    return sub_86fa5063
}

function owner() {
    return owner
}

function sub_ccb27bcb(?) {
    return sub_ccb27bcbAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5[address(arg1)] = 0
    emit AdminRemoved(arg1);
}

function sub_b5a40987(?) {
    require calldata.size - 4 >= 32
    require stor5[address(msg.sender)]
    require arg1 > registry.length
    sub_86fa5063 = arg1
    emit 0x393adc73: sub_86fa5063
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5[stor1] = 0
    emit AdminRemoved(owner);
    stor5[address(arg1)] = 1
    emit AdminAdded(arg1);
    owner = arg1
    emit OwnerChanged(owner);
}

function sub_d60bdf59(?) {
    require stor5[address(msg.sender)]
    require block.timestamp >= sub_32a87086 + (144 * 24 * 3600)
    sub_32a87086 = block.timestamp
    idx = 0
    while idx < registry.length:
        mem[0] = address(registry[idx].field_0)
        mem[32] = 6
        uint256(sub_0f984711[address(stor3[idx].field_0)].field_512) += uint256(sub_0f984711[address(stor3[idx].field_0)].field_256)
        uint256(sub_0f984711[address(stor3[idx].field_0)].field_256) = 0
        idx = idx + 1
        continue 
    emit 0xe5968a4d 
}

function withdraw() {
    require address(sub_0f984711[address(msg.sender)].field_0) == msg.sender
    require uint256(sub_0f984711[address(msg.sender)].field_1024) > 0
    require not uint256(sub_0f984711[address(msg.sender)].field_256)
    uint256(sub_0f984711[address(msg.sender)].field_1024) = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(sub_0f984711[address(msg.sender)].field_0), uint256(sub_0f984711[address(msg.sender)].field_1024)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x530cbb06: address(sub_0f984711[address(msg.sender)].field_0)
}

function allocate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require registry.length
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 10^18 * arg1 / registry.length / 10^18 * registry.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    idx = 0
    while idx < registry.length:
        mem[0] = address(registry[idx].field_0)
        mem[32] = 6
        uint256(sub_0f984711[address(stor3[idx].field_0)].field_256) += 10^18 * arg1 / registry.length / 10^18
        idx = idx + 1
        continue 
}

function escape() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xcc913a1f: msg.sender
}

function sub_e649d61e(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require stor5[address(msg.sender)]
    require stor5[address(msg.sender)]
    require registry.length + 1 <= sub_86fa5063
    require not address(sub_0f984711[address(arg1)].field_0)
    address(sub_0f984711[address(arg1)].field_0) = arg1
    registry.length++
    address(registry[registry.length].field_0) = arg1
    mem[ceil32(arg2.length) + 128] = arg1
    emit ContributorAdded(address arg1):
                          Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                          mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)],
    sub_19ed8db1[] = Array(len=arg2.length, data=arg2[all])
}

function getRegistry() {
    if not registry.length:
        mem[(32 * registry.length) + 128] = 32
        mem[(32 * registry.length) + 160] = registry.length
        mem[(32 * registry.length) + 192 len floor32(registry.length)] = mem[128 len floor32(registry.length)]
        return memory
          from (32 * registry.length) + 128
           len (96 * registry.length) + 64
    mem[128] = address(registry.field_0)
    idx = 128
    s = 0
    while (32 * registry.length) + 96 > idx:
        mem[idx + 32] = address(registry[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * registry.length) + 192 len floor32(registry.length)] = mem[128 len floor32(registry.length)]
    return Array(len=registry.length, data=mem[128 len floor32(registry.length)], mem[(32 * registry.length) + floor32(registry.length) + 192 len (32 * registry.length) - floor32(registry.length)]), 
}

function changeToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    idx = 0
    while idx < registry.length:
        mem[0] = address(registry[idx].field_0)
        mem[32] = 6
        uint256(sub_0f984711[address(stor3[idx].field_0)].field_1024) = 0
        uint256(sub_0f984711[address(stor3[idx].field_0)].field_256) = 0
        mem[100] = address(sub_0f984711[address(stor3[idx].field_0)].field_0)
        mem[132] = uint256(sub_0f984711[address(stor3[idx].field_0)].field_1024)
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(sub_0f984711[address(stor3[idx].field_0)].field_0), uint256(sub_0f984711[address(stor3[idx].field_0)].field_1024)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    sub_32a87086 = block.timestamp
    tokenAddress = arg1
    emit TokenChanged(arg1);
}

function escape(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xcc913a1f: msg.sender
}

function sub_72b9248a(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    require stor5[address(msg.sender)]
    require registry.length + ('cd', 4).length <= sub_86fa5063
    idx = 0
    while idx < ('cd', 4).length:
        require stor5[address(msg.sender)]
        require registry.length + 1 <= sub_86fa5063
        require not address(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_0)
        mem[32] = 6
        address(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_0) = address(cd[((32 * idx) + cd[4] + 36)])
        registry.length++
        mem[0] = 3
        address(registry[registry.length].field_0) = address(cd[((32 * idx) + cd[4] + 36)])
        mem[96] = address(cd[((32 * idx) + cd[4] + 36)])
        emit ContributorAdded(address(cd[((32 * idx) + cd[4] + 36)]));
        idx = idx + 1
        continue 
    sub_19ed8db1.length = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        sub_19ed8db1[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while sub_19ed8db1.length + 31 / 32 > idx:
        sub_19ed8db1[idx] = 0
        idx = idx + 1
        continue 
}

function sub_0c7814f1(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg2 > 0
    require address(sub_0f984711[address(msg.sender)].field_0) == msg.sender
    require address(sub_0f984711[address(arg1)].field_0) == arg1
    require address(sub_0f984711[address(msg.sender)].field_0) != address(sub_0f984711[address(arg1)].field_0)
    require uint256(sub_0f984711[address(msg.sender)].field_256) >= arg2
    uint256(sub_0f984711[address(msg.sender)].field_256) -= arg2
    uint256(sub_0f984711[address(arg1)].field_1024) += arg2
    uint256(sub_0f984711[address(arg1)].field_768) += arg2
    uint256(sub_0f984711[address(arg1)].field_1280)++
    address(stor[(4 * uint256(sub_0f984711[address(arg1)].field_1280)) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_0f984711', 6)))].field_0) = address(sub_0f984711[address(msg.sender)].field_0)
    uint256(stor[sha3((4 * uint256(sub_0f984711[address(arg1)].field_1280)) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_0f984711', 6))) + 1)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor[(4 * uint256(sub_0f984711[address(arg1)].field_1280)) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_0f984711', 6)))].field_512) = arg2
    uint256(stor[(4 * uint256(sub_0f984711[address(arg1)].field_1280)) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_0f984711', 6)))].field_768) = block.timestamp
    emit 0x123b075a: address(sub_0f984711[address(msg.sender)].field_0), address(sub_0f984711[address(arg1)].field_0)
}

function sub_a7f7969e(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    require stor5[address(msg.sender)]
    require cd[4] <= registry.length - 1
    require cd[4] < registry.length
    require registry.length - 1 < registry.length
    require cd[4] < registry.length
    address(registry[cd[4]].field_0) = address(registry[registry.length].field_0)
    require registry.length
    address(registry[registry.length].field_0) = 0
    registry.length--
    address(sub_0f984711[address(stor3[cd[4]].field_0)].field_0) = 0
    uint256(sub_0f984711[address(stor3[cd[4]].field_0)].field_256) = 0
    uint256(sub_0f984711[address(stor3[cd[4]].field_0)].field_512) = 0
    uint256(sub_0f984711[address(stor3[cd[4]].field_0)].field_768) = 0
    uint256(sub_0f984711[address(stor3[cd[4]].field_0)].field_1024) = 0
    uint256(sub_0f984711[address(stor3[cd[4]].field_0)].field_1280) = 0
    mem[0] = sha3(address(registry[cd[4]].field_0), 6) + 5
    idx = 0
    while sha3(sha3(address(registry[cd[4]].field_0), 6) + 5) + (4 * uint256(sub_0f984711[address(stor3[cd[4]].field_0)].field_1280)) > idx + sha3(mem[0]):
        address(stor[idx + sha3(mem[0])]) = 0
        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
        if 31 < stor[idx + sha3(mem[0]) + 1].length:
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(idx + sha3(mem[0]) + 1)
            while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
        uint256(stor[idx + sha3(mem[0]) + 3]) = 0
        idx = idx + 4
        continue 
    sub_19ed8db1.length = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        sub_19ed8db1[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while sub_19ed8db1.length + 31 / 32 > idx:
        sub_19ed8db1[idx] = 0
        idx = idx + 1
        continue 
    emit 0x665b9b79: address(registry[cd[4]].field_0)
}

function sub_8f6a97d7(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + ('cd', 68).length + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 6
    require uint256(sub_0f984711[address(msg.sender)].field_256) >= ('cd', 4).length * cd[36]
    idx = 0
    while idx < ('cd', 4).length:
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(('cd', 68).length) + 32
        mem[_26] = ('cd', 68).length
        mem[_26 + 32 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
        mem[_26 + ('cd', 68).length + 32] = 0
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        require cd[36] > 0
        require address(sub_0f984711[address(msg.sender)].field_0) == msg.sender
        require address(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_0) == address(cd[((32 * idx) + cd[4] + 36)])
        require address(sub_0f984711[address(msg.sender)].field_0) != address(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_0)
        require uint256(sub_0f984711[address(msg.sender)].field_256) >= cd[36]
        uint256(sub_0f984711[address(msg.sender)].field_256) -= cd[36]
        uint256(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_1024) += cd[36]
        uint256(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_768) += cd[36]
        _29 = mem[64]
        mem[64] = mem[64] + 128
        mem[_29] = 0
        mem[_29 + 32] = 96
        mem[_29 + 64] = 0
        mem[_29 + 96] = 0
        _30 = mem[64]
        mem[64] = mem[64] + 128
        mem[_30] = address(sub_0f984711[address(msg.sender)].field_0)
        mem[_30 + 32] = _26
        mem[_30 + 64] = cd[36]
        mem[_30 + 96] = block.timestamp
        uint256(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_1280)++
        address(stor[(4 * uint256(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_1280)) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4)))), ('name', 'sub_0f984711', 6)))].field_0) = address(sub_0f984711[address(msg.sender)].field_0)
        mem[0] = (4 * uint256(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_1280)) + sha3(sha3(address(cd[((32 * idx) + cd[4] + 36)]), 6) + 5) + 1
        uint256(stor[(4 * uint256(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_1280)) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4)))), ('name', 'sub_0f984711', 6)))].field_256) = (2 * ('cd', 68).length) + 1
        t = sha3((4 * uint256(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_1280)) + sha3(sha3(address(cd[((32 * idx) + cd[4] + 36)]), 6) + 5) + 1)
        s = _26 + 32
        while _26 + ('cd', 68).length + 32 > s:
            uint256(stor[t]) = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3((4 * uint256(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_1280)) + sha3(sha3(address(cd[((32 * idx) + cd[4] + 36)]), 6) + 5) + 1) + (Mask(251, 0, ('cd', 68).length + 31) >> 5)
        while sha3((4 * uint256(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_1280)) + sha3(sha3(address(cd[((32 * idx) + cd[4] + 36)]), 6) + 5) + 1) + (stor[(4 * uint256(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_1280)) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4)))), ('name', 'sub_0f984711', 6))) + 1].length + 31 / 32) > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        uint256(stor[(4 * uint256(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_1280)) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4)))), ('name', 'sub_0f984711', 6)))].field_512) = cd[36]
        uint256(stor[(4 * uint256(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_1280)) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4)))), ('name', 'sub_0f984711', 6)))].field_768) = block.timestamp
        mem[mem[64]] = address(sub_0f984711[address(msg.sender)].field_0)
        mem[mem[64] + 32] = address(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_0)
        emit 0x123b075a: address(sub_0f984711[address(msg.sender)].field_0), address(sub_0f984711[address(cd[((32 * idx) + cd[4] + 36)])].field_0)
        idx = idx + 1
        continue 
}



}
