contract main {




// =====================  Runtime code  =====================


const implementsERC721 = 1


address sub_b77feb1bAddress;
uint8 stor1; offset 160
uint128 stor1; offset 160
address stor1;
mapping of address sub_31899ed8;
array of uint256 name;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    return sub_31899ed8[arg1]
}

function sub_31899ed8(?) {
    return sub_31899ed8[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_b77feb1b(?) {
    return sub_b77feb1bAddress
}

function sub_bd597fb3(?) {
    return bool(uint8(stor1.field_160))
}

function _fallback() payable {
    revert
}

function sub_af0dcbd8(?) {
    require msg.sender == address(stor1.field_0)
    require arg1
    address(stor1.field_0) = arg1
}

function totalSupply() {
    require ext_code.size(sub_b77feb1bAddress)
    staticcall sub_b77feb1bAddress.0x5036e1a5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function ownerOf(uint256 arg1) {
    require ext_code.size(sub_b77feb1bAddress)
    staticcall sub_b77feb1bAddress.0x723ddec9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function balanceOf(address arg1) {
    require arg1
    require ext_code.size(sub_b77feb1bAddress)
    staticcall sub_b77feb1bAddress.0x4ed6c3e2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) payable {
    require ext_code.size(sub_b77feb1bAddress)
    staticcall sub_b77feb1bAddress.0x723ddec9 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    emit Approval(msg.sender, arg1, arg2);
    sub_31899ed8[arg2] = arg1
}

function sub_9b3eef11(?) {
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
    require ext_code.size(sub_b77feb1bAddress)
    call sub_b77feb1bAddress.0xaf0dcbd8 with:
         gas gas_remaining wei
        args address(stor1.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_b77feb1bAddress)
    call sub_b77feb1bAddress.init() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7efd37b6(?) {
    require ext_code.size(sub_b77feb1bAddress)
    staticcall sub_b77feb1bAddress.0x723ddec9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_b77feb1bAddress)
    call sub_b77feb1bAddress.0x7efd37b6 with:
         gas gas_remaining wei
        args arg1, call.data[36 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xecf92fa0: arg1, call.data[36 len 64]
}

function sub_b8b825a5(?) {
    require arg2 > 0
    require arg2 < 0x100000000000000000000000000000000
    require ext_code.size(sub_b77feb1bAddress)
    staticcall sub_b77feb1bAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(sub_b77feb1bAddress)
    call sub_b77feb1bAddress.0x83a6890c with:
         gas gas_remaining wei
        args arg1, arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_eb5db0a2(?) {
    require ext_code.size(sub_b77feb1bAddress)
    staticcall sub_b77feb1bAddress.0x723ddec9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg2 > 0
    require arg2 < 0x100000000000000000000000000000000
    require ext_code.size(sub_b77feb1bAddress)
    call sub_b77feb1bAddress.0xeb5db0a2 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9a5c82be: arg1, arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require ext_code.size(sub_b77feb1bAddress)
    staticcall sub_b77feb1bAddress.0x723ddec9 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require msg.sender == sub_31899ed8[arg3]
    require ext_code.size(sub_b77feb1bAddress)
    call sub_b77feb1bAddress.0x61eeb23d with:
         gas gas_remaining wei
        args arg3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg1, arg2, arg3);
}

function buyPlot(uint256 arg1) {
    require ext_code.size(sub_b77feb1bAddress)
    call sub_b77feb1bAddress.0xb87744d4 with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_b77feb1bAddress)
    staticcall sub_b77feb1bAddress.getSellPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_b77feb1bAddress)
    call sub_b77feb1bAddress.0xeb5db0a2 with:
         gas gas_remaining wei
        args arg1, 2 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa347fc71: arg1, msg.sender
}

function sub_59f9f50f(?) {
    require ext_code.size(sub_b77feb1bAddress)
    staticcall sub_b77feb1bAddress.0x723ddec9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    mem[196] = arg2.length
    require ext_code.size(sub_b77feb1bAddress)
    call sub_b77feb1bAddress.0x59f9f50f with:
         gas gas_remaining wei
        args 0, uint32(arg1), 96, arg2.length + 128, arg2.length, arg2[all], arg3.length, arg3[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len arg2.length] = arg2[all]
    mem[arg2.length + 224] = arg3.length
    emit 0x46e7fe17: arg1, Array(len=arg2.length, data=mem[224 len 4], arg2[all], Mask(224, 0, arg3.length), arg3[all]), arg2.length + 128
}

function sub_0cb9866d(?) {
    require ext_code.size(sub_b77feb1bAddress)
    staticcall sub_b77feb1bAddress.0x723ddec9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_b77feb1bAddress)
    staticcall sub_b77feb1bAddress.0x723ddec9 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_b77feb1bAddress)
    call sub_b77feb1bAddress.0xcb9866d with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2ffffea4: arg1, arg2
}

function sub_ed54e1eb(?) {
    mem[96 len 256] = code.data[9452 len 256]
    mem[352] = 0xed54e1eb00000000000000000000000000000000000000000000000000000000
    mem[356] = arg1
    require ext_code.size(sub_b77feb1bAddress)
    staticcall sub_b77feb1bAddress.0xed54e1eb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 416
    _6 = mem[640]
    _7 = mem[672]
    require mem[672] <= 4294967296
    require mem[672] + 32 <= return_data.size
    require mem[mem[672] + 352] <= 4294967296 and mem[672] + mem[mem[672] + 352] + 32 <= return_data.size
    _9 = mem[704]
    require mem[704] <= 4294967296
    require mem[704] + 32 <= return_data.size
    require mem[mem[704] + 352] <= 4294967296 and mem[704] + mem[mem[704] + 352] + 32 <= return_data.size
    _11 = mem[736]
    mem[ceil32(return_data.size) + 352] = Mask(160, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 384 len 256] = uint32(arg1), mem[388 len 252]
    mem[ceil32(return_data.size) + 640] = _6
    mem[ceil32(return_data.size) + 736] = _11
    mem[ceil32(return_data.size) + 672] = 416
    mem[ceil32(return_data.size) + 768] = mem[_7 + 352]
    _15 = mem[_7 + 352]
    mem[ceil32(return_data.size) + 800 len ceil32(mem[_7 + 352])] = mem[_7 + 384 len ceil32(mem[_7 + 352])]
    if not _15 % 32:
        mem[ceil32(return_data.size) + 704] = _15 + 448
        mem[_15 + ceil32(return_data.size) + 800] = mem[_9 + 352]
        _33 = mem[_9 + 352]
        mem[_15 + ceil32(return_data.size) + 832 len ceil32(mem[_9 + 352])] = mem[_9 + 384 len ceil32(mem[_9 + 352])]
        if not _33 % 32:
            return Mask(160, 32, arg1) << 64, 
                   mem[ceil32(return_data.size) + 384 len 256],
                   _6,
                   416,
                   _15 + 448,
                   _11,
                   mem[ceil32(return_data.size) + 768 len _33 + _15 + 64]
        mem[floor32(_33) + _15 + ceil32(return_data.size) + 832] = mem[floor32(_33) + _15 + ceil32(return_data.size) + -(_33 % 32) + 864 len _33 % 32]
        return Mask(160, 32, arg1) << 64, 
               mem[ceil32(return_data.size) + 384 len 256],
               _6,
               416,
               _15 + 448,
               _11,
               mem[ceil32(return_data.size) + 768 len floor32(_33) + _15 + 96]
    mem[floor32(_15) + ceil32(return_data.size) + 800] = mem[floor32(_15) + ceil32(return_data.size) + -(_15 % 32) + 832 len _15 % 32]
    mem[ceil32(return_data.size) + 704] = floor32(_15) + 480
    mem[floor32(_15) + ceil32(return_data.size) + 832] = mem[_9 + 352]
    _36 = mem[_9 + 352]
    mem[floor32(_15) + ceil32(return_data.size) + 864 len ceil32(mem[_9 + 352])] = mem[_9 + 384 len ceil32(mem[_9 + 352])]
    if not _36 % 32:
        return Mask(160, 32, arg1) << 64, 
               mem[ceil32(return_data.size) + 384 len 256],
               _6,
               416,
               floor32(_15) + 480,
               _11,
               mem[ceil32(return_data.size) + 768 len _36 + floor32(_15) + 96]
    mem[floor32(_36) + floor32(_15) + ceil32(return_data.size) + 864] = mem[floor32(_36) + floor32(_15) + ceil32(return_data.size) + -(_36 % 32) + 896 len _36 % 32]
    return Mask(160, 32, arg1) << 64, 
           mem[ceil32(return_data.size) + 384 len 256],
           _6,
           416,
           floor32(_15) + 480,
           _11,
           mem[ceil32(return_data.size) + 768 len floor32(_36) + floor32(_15) + 128]
}



}
