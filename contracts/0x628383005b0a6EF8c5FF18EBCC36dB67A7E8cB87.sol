contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address hubAddress;
mapping of struct sub_3ec50c6c;
mapping of uint8 stor3;

function hub() {
    return hubAddress
}

function checkAccess(bytes32 arg1, address arg2) {
    return bool(sub_3ec50c6c[arg1][address(arg2)].field_0)
}

function sub_3ec50c6c(?) {
    mem[128] = sub_3ec50c6c[arg1][arg2][1].field_0
    idx = 128
    s = 0
    while sub_3ec50c6c[arg1][arg2][1].length + 96 > idx:
        mem[idx + 32] = sub_3ec50c6c[arg1][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(sub_3ec50c6c[arg1][arg2].field_0), 
           Array(len=sub_3ec50c6c[arg1][arg2][1].length, data=mem[128 len sub_3ec50c6c[arg1][arg2][1].length])
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function delegates(address arg1, address arg2) {
    return bool(stor3[arg1][arg2])
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

function addDelegate(address arg1) {
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
    require ext_call.return_data[0]
    require not uint8(stor0.field_160)
    require arg1
    require arg1 != msg.sender
    stor3[address(msg.sender)][address(arg1)] = 1
    emit 0x33a3d999: msg.sender, arg1
    return 1
}

function grantAccessbyDelegate(bytes32 arg1, address arg2, address arg3, string arg4) {
    require stor3[address(arg3)][address(msg.sender)]
    require ext_code.size(hubAddress)
    call hubAddress.0xfc0d561e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x36880b82 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == arg3
    require not uint8(stor0.field_160)
    require arg3
    require arg2
    require arg4.length
    sub_3ec50c6c[arg1][address(arg2)].field_0 = 1
    sub_3ec50c6c[arg1][address(arg2)][1][].field_0 = Array(len=arg4.length, data=arg4[all])
    emit 0xcecf6162: msg.sender, arg1, arg3, arg2
    return 1
}

function revokeAccessbyDelegate(bytes32 arg1, address arg2, address arg3) {
    require stor3[address(arg3)][address(msg.sender)]
    require ext_code.size(hubAddress)
    call hubAddress.0xfc0d561e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x36880b82 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == arg3
    require not uint8(stor0.field_160)
    require arg3
    require sub_3ec50c6c[arg1][address(arg2)].field_0
    sub_3ec50c6c[arg1][address(arg2)].field_0 = 0
    sub_3ec50c6c[arg1][address(arg2)].field_256 = 0
    sub_3ec50c6c[arg1][address(arg2)].field_257 = 0
    sub_3ec50c6c[arg1][address(arg2)].field_264 = mem[192 len 31]
    idx = 0
    while sub_3ec50c6c[arg1][address(arg2)][1].length + 31 / 32 > idx:
        sub_3ec50c6c[arg1][address(arg2)][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    emit 0x3e257239: msg.sender, arg1, arg3, arg2
    return 1
}

function grantAccess(bytes32 arg1, address arg2, string arg3) {
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
    require ext_call.return_data[0]
    require ext_code.size(hubAddress)
    call hubAddress.0xfc0d561e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x36880b82 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require not uint8(stor0.field_160)
    require msg.sender
    require arg2
    require arg3.length
    sub_3ec50c6c[arg1][address(arg2)].field_0 = 1
    sub_3ec50c6c[arg1][address(arg2)][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    emit 0xcecf6162: msg.sender, arg1, msg.sender, arg2
    return 1
}

function revokeAccess(bytes32 arg1, address arg2) {
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
    require ext_call.return_data[0]
    require ext_code.size(hubAddress)
    call hubAddress.0xfc0d561e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x36880b82 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require not uint8(stor0.field_160)
    require msg.sender
    require sub_3ec50c6c[arg1][address(arg2)].field_0
    sub_3ec50c6c[arg1][address(arg2)].field_0 = 0
    sub_3ec50c6c[arg1][address(arg2)].field_256 = 0
    sub_3ec50c6c[arg1][address(arg2)].field_257 = 0
    sub_3ec50c6c[arg1][address(arg2)].field_264 = mem[192 len 31]
    idx = 0
    while sub_3ec50c6c[arg1][address(arg2)][1].length + 31 / 32 > idx:
        sub_3ec50c6c[arg1][address(arg2)][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    emit 0x3e257239: msg.sender, arg1, msg.sender, arg2
    return 1
}

function sub_220e5b4b(?) payable {
    mem[64] = 96
    require not msg.value
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
    require ext_call.return_data[0]
    require ext_code.size(hubAddress)
    call hubAddress.0xfc0d561e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x36880b82 with:
         gas gas_remaining wei
        args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require cd[4]
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < ('cd', 100).length:
        require address(cd[((32 * idx) + cd[100] + 36)])
        mem[mem[64] + 100] = ('cd', 68).length
        mem[mem[64] + 132 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
        require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
        call address(cd[((32 * idx) + cd[100] + 36)]).0x9cf4898c with:
             gas gas_remaining wei
            args cd[4], address(cd[36]), Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 32] = bool(ext_call.return_data[0])
        mem[mem[64] + 64] = msg.sender
        mem[mem[64]] = 96
        mem[mem[64] + 96] = ('cd', 68).length
        mem[mem[64] + 128 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
        emit 0x5e2cd7ff: Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length]), bool(ext_call.return_data[0]), msg.sender, cd[4], address(cd[36]), address(cd[((32 * idx) + cd[100] + 36)])
        require ext_call.return_data[0]
        s = ext_call.return_data[0]
        s = address(cd[((32 * idx) + cd[100] + 36)])
        s = address(cd[((32 * idx) + cd[100] + 36)])
        idx = idx + 1
        continue 
    _46 = mem[64]
    mem[64] = mem[64] + ceil32(('cd', 68).length) + 32
    mem[_46] = ('cd', 68).length
    mem[_46 + 32 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    require not uint8(stor0.field_160)
    require msg.sender
    require address(cd[36])
    require ('cd', 68).length
    _51 = mem[64]
    sub_3ec50c6c[cd[4]][address(cd[36])].field_0 = 1
    sub_3ec50c6c[cd[4]][address(cd[36])][1][].field_0 = Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
    emit 0xcecf6162: msg.sender, cd[4], msg.sender, address(cd[36])
    return 1
}



}
