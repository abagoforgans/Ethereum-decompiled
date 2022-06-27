contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
mapping of struct sub_04c696d3;
mapping of uint8 stor4;
array of uint256 sub_d4ad82fe;

function sub_04c696d3(?) payable {
    require calldata.size - 4 >= 32
    require sub_d4ad82fe.length
    require sub_04c696d3[arg1].field_0 < sub_d4ad82fe.length
    require sub_d4ad82fe[stor3[arg1].field_0] == arg1
    return sub_04c696d3[arg1].field_0
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function paused() payable {
    return bool(stor2)
}

function owner() payable {
    return owner
}

function sub_9763b679(?) payable {
    require calldata.size - 4 >= 32
    return sub_04c696d3[arg1].field_256
}

function authorized(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function sub_d4ad82fe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_d4ad82fe.length
    return sub_d4ad82fe[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() payable {
    require msg.sender
    require stor1[address(msg.sender)]
    require stor2
    stor2 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor1[address(msg.sender)]
    require not stor2
    stor2 = 1
    emit Paused(msg.sender);
}

function sub_5d3579ba(?) payable {
    require calldata.size - 4 >= 64
    require not stor2
    require msg.sender == owner
    stor4[address(arg1)] = uint8(arg2)
}

function renouncePauser() payable {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_838e8364(?) payable {
    require calldata.size - 4 >= 32
    if not sub_d4ad82fe.length:
        return 0
    require sub_04c696d3[arg1].field_0 < sub_d4ad82fe.length
    return (sub_d4ad82fe[stor3[arg1].field_0] == arg1)
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function sub_b47249bc(?) payable {
    require calldata.size - 4 >= 160
    require not stor2
    require sub_d4ad82fe.length
    require sub_04c696d3[arg1].field_0 < sub_d4ad82fe.length
    require sub_d4ad82fe[stor3[arg1].field_0] == arg1
    require bool(stor4[address(msg.sender)]) == 1
    signer = erecover(arg2, arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    sub_04c696d3[arg1].field_512 = address(signer)
    emit 0xa66b6bd4: arg1, address(signer)
    return sub_04c696d3[arg1].field_0
}

function sub_cefabc2a(?) payable {
    require calldata.size - 4 >= 160
    require not stor2
    require sub_d4ad82fe.length
    require sub_04c696d3[arg1].field_0 < sub_d4ad82fe.length
    require sub_d4ad82fe[stor3[arg1].field_0] == arg1
    require bool(stor4[address(msg.sender)]) == 1
    signer = erecover(arg2, arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    sub_04c696d3[arg1].field_512 = address(signer)
    emit 0xa66b6bd4: arg1, address(signer)
    return sub_04c696d3[arg1].field_0
}

function sub_96e3807d(?) payable {
    require calldata.size - 4 >= 160
    require not stor2
    require sub_d4ad82fe.length
    require sub_04c696d3[arg1].field_0 < sub_d4ad82fe.length
    require sub_d4ad82fe[stor3[arg1].field_0] == arg1
    require bool(stor4[address(msg.sender)]) == 1
    signer = erecover(arg2, arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    sub_04c696d3[arg1].field_512 = address(signer)
    require sub_04c696d3[arg1].field_256 == address(signer)
    emit 0xd1bf83d9: arg1, address(signer)
    return 1
}

function sub_dfc4199a(?) payable {
    require calldata.size - 4 >= 192
    require not stor2
    require sub_d4ad82fe.length
    require sub_04c696d3[arg1].field_0 < sub_d4ad82fe.length
    require sub_d4ad82fe[stor3[arg1].field_0] == arg1
    require bool(stor4[address(msg.sender)]) == 1
    signer = erecover(arg3, arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require sub_04c696d3[arg1].field_256 == address(signer)
    require sub_04c696d3[arg1].field_512 == arg2
    sub_04c696d3[arg1].field_256 = arg2
    emit 0x238e4a5f: arg1, address(signer), sub_04c696d3[arg1].field_256
    return 1
}

function sub_5143c51c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require not stor2
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require not stor2
        require msg.sender == owner
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
}

function sub_e48f6865(?) payable {
    require calldata.size - 4 >= 160
    require not stor2
    require bool(stor4[address(msg.sender)]) == 1
    if sub_d4ad82fe.length:
        require sub_04c696d3[arg1].field_0 < sub_d4ad82fe.length
        require sub_d4ad82fe[stor3[arg1].field_0] != arg1
    signer = erecover(arg2, arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    sub_04c696d3[arg1].field_256 = address(signer)
    sub_04c696d3[arg1].field_512 = address(signer)
    sub_d4ad82fe.length++
    sub_d4ad82fe[sub_d4ad82fe.length] = arg1
    sub_04c696d3[arg1].field_0 = sub_d4ad82fe.length
    emit 0x638ba8e1: arg1, address(signer)
    return (sub_d4ad82fe.length - 1)
}

function sub_cc033168(?) payable {
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require not stor2
    require sub_d4ad82fe.length
    require sub_04c696d3[arg1].field_0 < sub_d4ad82fe.length
    require sub_d4ad82fe[stor3[arg1].field_0] == arg1
    require bool(stor4[address(msg.sender)]) == 1
    signer = erecover(arg3, arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require sub_04c696d3[arg1].field_256 == address(signer)
    emit 0x76d2d1b3: Array(len=arg2.length, data=arg2[all]), arg1, sub_04c696d3[arg1].field_256, address(signer)
    return 1
}

function sub_ff013394(?) payable {
    require calldata.size - 4 >= 160
    require not stor2
    require bool(stor4[address(msg.sender)]) == 1
    require sub_d4ad82fe.length
    require sub_04c696d3[arg1].field_0 < sub_d4ad82fe.length
    require sub_d4ad82fe[stor3[arg1].field_0] == arg1
    signer = erecover(arg2, arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require sub_04c696d3[arg1].field_256 == address(signer)
    require sub_d4ad82fe.length - 1 < sub_d4ad82fe.length
    require sub_04c696d3[arg1].field_0 < sub_d4ad82fe.length
    sub_d4ad82fe[stor3[arg1].field_0] = sub_d4ad82fe[sub_d4ad82fe.length]
    sub_04c696d3[stor5[stor5.length]].field_0 = sub_04c696d3[arg1].field_0
    sub_d4ad82fe.length--
    if sub_d4ad82fe.length > sub_d4ad82fe.length - 1:
        idx = sub_d4ad82fe.length - 1
        while sub_d4ad82fe.length > idx:
            sub_d4ad82fe[idx] = 0
            idx = idx + 1
            continue 
    emit 0x54a15ff4: arg1, address(signer)
    return 1
}

function sub_b1422f73(?) payable {
    require calldata.size - 4 >= 128
    mem[96 len 320] = code.data[10612 len 320]
    signer = erecover(arg1, arg2 << 248, arg3, arg4) 
    mem[416] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = 768
    mem[448 len 320] = code.data[10612 len 320]
    idx = 0
    s = 0
    while idx < sub_d4ad82fe.length:
        mem[0] = sub_d4ad82fe[idx]
        mem[32] = 3
        _24 = mem[64]
        mem[mem[64] + 32] = address(signer)
        _25 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _27 = sha3(mem[_25 + 32 len mem[_25]])
        mem[_24 + 84] = sub_04c696d3[stor5[idx]].field_256
        mem[_24 + 52] = 20
        mem[64] = _24 + 104
        if sha3(sub_04c696d3[stor5[idx]].field_256) != _27:
            idx = idx + 1
            s = s
            continue 
        require idx < sub_d4ad82fe.length
        mem[0] = 5
        require s < 10
        mem[(32 * s) + 448] = sub_d4ad82fe[idx]
        if s != 10:
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        while idx < 320:
            mem[_24 + idx + 104] = mem[idx + 448]
            idx = idx + 32
            continue 
        return memory
          from _24 + 104
           len 320
    mem[mem[64] len 320] = mem[448 len 320]
    return memory
      from mem[64]
       len 320
}

function sub_c8ed6705(?) payable {
    require calldata.size - 4 >= 128
    mem[96 len 320] = code.data[10612 len 320]
    signer = erecover(arg1, arg2 << 248, arg3, arg4) 
    mem[416] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = 768
    mem[448 len 320] = code.data[10612 len 320]
    idx = 0
    s = 0
    while idx < sub_d4ad82fe.length:
        mem[0] = sub_d4ad82fe[idx]
        mem[32] = 3
        _24 = mem[64]
        mem[mem[64] + 32] = address(signer)
        _25 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _27 = sha3(mem[_25 + 32 len mem[_25]])
        mem[_24 + 84] = sub_04c696d3[stor5[idx]].field_512
        mem[_24 + 52] = 20
        mem[64] = _24 + 104
        if sha3(sub_04c696d3[stor5[idx]].field_512) != _27:
            idx = idx + 1
            s = s
            continue 
        require idx < sub_d4ad82fe.length
        mem[0] = 5
        require s < 10
        mem[(32 * s) + 448] = sub_d4ad82fe[idx]
        if s != 10:
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        while idx < 320:
            mem[_24 + idx + 104] = mem[idx + 448]
            idx = idx + 32
            continue 
        return memory
          from _24 + 104
           len 320
    mem[mem[64] len 320] = mem[448 len 320]
    return memory
      from mem[64]
       len 320
}

function sub_7191451e(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require not stor2
    require sub_d4ad82fe.length
    require sub_04c696d3[arg1].field_0 < sub_d4ad82fe.length
    require sub_d4ad82fe[stor3[arg1].field_0] == arg1
    require bool(stor4[address(msg.sender)]) == 1
    mem[ceil32(arg3.length) + 128] = 32
    mem[ceil32(arg3.length) + 160] = arg3.length
    mem[ceil32(arg3.length) + 192 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit 0x8072b64d: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, arg1, arg2
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
        emit 0x8072b64d: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 192 len floor32(arg3.length) + -ceil32(arg3.length) + 32], arg1, arg2
}



}
