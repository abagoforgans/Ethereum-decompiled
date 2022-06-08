contract main {




// =====================  Runtime code  =====================


#
#  - recover(bytes32 arg1, bytes32 arg2, bytes32 arg3, uint8 arg4)
#  - addSig(bytes32 arg1, bytes32 arg2, bytes32 arg3, uint8 arg4)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address hubAddress;
mapping of struct records;

function records(bytes32 arg1) {
    mem[128] = records[arg1][5].field_0
    idx = 128
    s = 0
    while records[arg1][5].length + 96 > idx:
        mem[idx + 32] = records[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return records[arg1].field_0, 
           records[arg1].field_256,
           records[arg1].field_768,
           records[arg1].field_1024,
           Array(len=records[arg1][5].length, data=mem[128 len records[arg1][5].length]),
           records[arg1].field_1536
}

function hub() {
    return hubAddress
}

function recordOwnerOf(bytes32 arg1) {
    return records[arg1].field_0
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function sigExists(bytes32 arg1, address arg2) {
    return bool(records[arg1][2][address(arg2)].field_0)
}

function getIrisProvidersReport(bytes32 arg1, address arg2) {
    return records[arg1][7][address(arg2)].field_0
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() {
  stop
}

function rootHashOf(bytes32 arg1) {
    return sha3(arg1, records[arg1].field_256)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateIris(bytes32 arg1, address arg2) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    require arg2
    require arg1
    require records[arg1].field_1536
    require not records[arg1][7][address(arg2)].field_0
    require ext_code.size(arg2)
    call arg2.report(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require records[arg1].field_1024 + ext_call.return_data[0] >= records[arg1].field_1024
    records[arg1].field_1024 += ext_call.return_data[0]
    records[arg1][7][address(arg2)].field_0 = ext_call.return_data[0]
    emit 0x1619dfb4: ext_call.return_data[0], arg1, arg2, msg.sender
    return ext_call.return_data[0]
}

function addSigByProvider(bytes32 arg1) {
    require ext_code.size(hubAddress)
    call hubAddress.0x142ebf3c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xdbe3e92f with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require not uint8(stor0.field_160)
    require ext_code.size(hubAddress)
    call hubAddress.0x142ebf3c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xdbe3e92f with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require records[arg1].field_1536
    require not records[arg1][2][address(msg.sender)].field_0
    require ext_code.size(hubAddress)
    call hubAddress.0x142ebf3c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xdbe3e92f with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require records[arg1].field_768 + 1 >= records[arg1].field_768
    records[arg1].field_768++
    records[arg1][2][address(msg.sender)].field_0 = 1
    require records[arg1].field_1024 + ext_call.return_data[0] >= records[arg1].field_1024
    records[arg1].field_1024 += ext_call.return_data[0]
    emit 0x180a140b: records[arg1].field_1024, arg1, msg.sender
    return 1
}

function addRecord(bytes32 arg1, string arg2, string arg3) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require ext_code.size(hubAddress)
    call hubAddress.0x142ebf3c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 164] = msg.sender
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4209fff1 with:
         gas gas_remaining wei
        args msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    require not uint8(stor0.field_160)
    require arg1
    require arg3.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    require not records[arg1].field_1536
    require ext_code.size(hubAddress)
    call hubAddress.0x142ebf3c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4209fff1 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    records[arg1].field_0 = msg.sender
    records[arg1].field_256 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 192 len arg2.length % 32])
    records[arg1].field_768 = 0
    records[arg1].field_1024 = 0
    records[arg1][5][].field_0 = Array(len=arg3.length, data=arg3[all])
    records[arg1].field_1536 = block.timestamp
    emit 0x291892e7: Array(len=arg2.length, data=arg2[all]), arg1, msg.sender
    return 1
}

function addRecordwithReward(bytes32 arg1, string arg2, string arg3, address arg4) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require ext_code.size(hubAddress)
    call hubAddress.0x142ebf3c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 164] = msg.sender
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4209fff1 with:
         gas gas_remaining wei
        args msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    require not uint8(stor0.field_160)
    require arg4
    require arg4 != this.address
    require arg1
    require arg3.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg2.length % 32] = mem[ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + floor32(arg2.length) + 224 len arg2.length % 32]
    require not records[arg1].field_1536
    require ext_code.size(hubAddress)
    call hubAddress.0x142ebf3c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4209fff1 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    records[arg1].field_0 = msg.sender
    records[arg1].field_256 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 192 len arg2.length % 32])
    records[arg1].field_768 = 0
    records[arg1].field_1024 = 0
    records[arg1][5][].field_0 = Array(len=arg3.length, data=arg3[all])
    records[arg1].field_1536 = block.timestamp
    emit 0x291892e7: Array(len=arg2.length, data=arg2[all]), arg1, msg.sender
    require ext_code.size(arg4)
    call arg4.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xb71e6109: 10^15, arg4, arg1, msg.sender
    return 1
}

function addRecordByAdmin(bytes32 arg1, address arg2, address arg3, string arg4, string arg5) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    require arg1
    require arg5.length
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + -(arg4.length % 32) + 224 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 192 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(arg5.length) + 224 len arg4.length % 32] = mem[ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + floor32(arg4.length) + 224 len arg4.length % 32]
    require not records[arg1].field_1536
    require ext_code.size(hubAddress)
    call hubAddress.0x142ebf3c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4209fff1 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    records[arg1].field_0 = arg2
    records[arg1].field_256 = sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 192 len arg4.length % 32])
    records[arg1].field_768 = 0
    records[arg1].field_1024 = 0
    records[arg1][5][].field_0 = Array(len=arg5.length, data=arg5[all])
    records[arg1].field_1536 = block.timestamp
    emit 0x291892e7: Array(len=arg4.length, data=arg4[all]), arg1, arg2
    if arg3:
        require ext_code.size(hubAddress)
        call hubAddress.0x142ebf3c with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xdbe3e92f with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > 0
        require records[arg1].field_1536
        require not records[arg1][2][address(arg3)].field_0
        require ext_code.size(hubAddress)
        call hubAddress.0x142ebf3c with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xdbe3e92f with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require records[arg1].field_768 + 1 >= records[arg1].field_768
        records[arg1].field_768++
        records[arg1][2][address(arg3)].field_0 = 1
        require records[arg1].field_1024 + ext_call.return_data[0] >= records[arg1].field_1024
        records[arg1].field_1024 += ext_call.return_data[0]
        emit 0x180a140b: records[arg1].field_1024, arg1, arg3
    return 1
}

function addRecordByProvider(bytes32 arg1, address arg2, string arg3, string arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require ext_code.size(hubAddress)
    call hubAddress.0x142ebf3c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4209fff1 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    require ext_code.size(hubAddress)
    call hubAddress.0x142ebf3c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 164] = msg.sender
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xdbe3e92f with:
         gas gas_remaining wei
        args msg.sender
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require not uint8(stor0.field_160)
    require arg1
    require arg4.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(2 * floor32(arg3.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    require not records[arg1].field_1536
    require ext_code.size(hubAddress)
    call hubAddress.0x142ebf3c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4209fff1 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    records[arg1].field_0 = arg2
    records[arg1].field_256 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 192 len arg3.length % 32])
    records[arg1].field_768 = 0
    records[arg1].field_1024 = 0
    records[arg1][5][].field_0 = Array(len=arg4.length, data=arg4[all])
    records[arg1].field_1536 = block.timestamp
    emit 0x291892e7: Array(len=arg3.length, data=arg3[all]), arg1, arg2
    require ext_code.size(hubAddress)
    call hubAddress.0x142ebf3c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xdbe3e92f with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require records[arg1].field_1536
    require not records[arg1][2][address(msg.sender)].field_0
    require ext_code.size(hubAddress)
    call hubAddress.0x142ebf3c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xdbe3e92f with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require records[arg1].field_768 + 1 >= records[arg1].field_768
    records[arg1].field_768++
    records[arg1][2][address(msg.sender)].field_0 = 1
    require records[arg1].field_1024 + ext_call.return_data[0] >= records[arg1].field_1024
    records[arg1].field_1024 += ext_call.return_data[0]
    emit 0x180a140b: records[arg1].field_1024, arg1, msg.sender
    return 1
}



}
