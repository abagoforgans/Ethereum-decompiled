contract main {




// =====================  Runtime code  =====================


address ceoAddress;
address cfoAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address cooAddress;
address stor3;
array of uint256 sub_990581b6;
mapping of address sub_78669280;
mapping of uint256 sub_fac9c51f;
array of uint256 sub_5501d42d;
mapping of uint256 sub_46cb96fa;
array of uint8 stor9;
mapping of address sub_fffb1479;
mapping of uint256 sub_3108e4d7;
mapping of uint256 sub_b3557522;
uint256 sub_ad842028;
array of uint256 stor14;
mapping of address sub_f0104323;
mapping of uint256 sub_1b57cd44;
array of uint256 sub_ca083be2;
address newContractAddress;

function cfoAddress() {
    return cfoAddress
}

function ceoAddress() {
    return ceoAddress
}

function sub_1b57cd44(?) {
    require calldata.size - 4 >= 32
    return sub_1b57cd44[arg1]
}

function sub_3108e4d7(?) {
    require calldata.size - 4 >= 32
    return sub_3108e4d7[arg1]
}

function sub_46cb96fa(?) {
    require calldata.size - 4 >= 32
    return sub_46cb96fa[arg1]
}

function sub_5501d42d(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_5501d42d[arg1]
    return sub_5501d42d[arg1][arg2]
}

function paused() {
    return bool(uint8(stor2.field_160))
}

function newContractAddress() {
    return newContractAddress
}

function sub_78669280(?) {
    require calldata.size - 4 >= 32
    return sub_78669280[arg1]
}

function sub_990581b6(?) {
    return uint256(sub_990581b6[arg1][0 len sub_990581b6[arg1].length])
}

function sub_9db797f0(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor9.length
    return bool(uint8(stor9[arg1]))
}

function sub_ad842028(?) {
    return sub_ad842028
}

function cooAddress() {
    return cooAddress
}

function sub_b3557522(?) {
    require calldata.size - 4 >= 32
    return sub_b3557522[arg1]
}

function sub_ca083be2(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_ca083be2[arg1]
    return sub_ca083be2[arg1][arg2]
}

function sub_e52ab74b(?) {
    require calldata.size - 4 >= 32
    return sub_5501d42d[arg1]
}

function sub_f0104323(?) {
    require calldata.size - 4 >= 32
    return sub_f0104323[arg1]
}

function sub_fac9c51f(?) {
    require calldata.size - 4 >= 32
    return sub_fac9c51f[arg1]
}

function sub_fffb1479(?) {
    require calldata.size - 4 >= 32
    return sub_fffb1479[arg1]
}

function _fallback() payable {
    revert
}

function setCEO(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function setCOO(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    cooAddress = arg1
}

function setCFO(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    cfoAddress = arg1
}

function sub_52a6d363(?) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    stor3 = arg1
}

function setNewAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    newContractAddress = arg1
    emit ContractUpgrade(arg1);
}

function pause() {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require not uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 1
}

function unpause() {
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    require not newContractAddress
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 0
}

function sub_95787d26(?) payable {
    require calldata.size - 4 >= 32
    require msg.value >= sub_ad842028
    require sub_78669280[arg1]
    require sub_78669280[arg1] != msg.sender
    stor14.length++
    uint256(stor14[stor14.length]) = msg.value
    require stor14.length == uint32(stor14.length)
    sub_f0104323[stor14.length] = msg.sender
    sub_1b57cd44[stor14.length] = arg1
    require sub_5501d42d[arg1]
    call sub_78669280[arg1] with:
       value 70 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < sub_5501d42d[arg1]:
        require idx < sub_5501d42d[arg1]
        call sub_fffb1479[stor7[arg1][idx]] with:
           value msg.value - (70 * msg.value / 100) / sub_5501d42d[arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < sub_5501d42d[arg1]
        sub_ca083be2[stor14.length]++
        sub_ca083be2[stor14.length][sub_ca083be2[stor14.length]] = sub_5501d42d[arg1][idx]
        mem[0] = arg1
        mem[32] = 7
        idx = idx + 1
        continue 
    emit 0x6ea1e5e0: msg.sender, stor14.length
    return stor14.length
}

function sub_85ac7882(?) {
    require calldata.size - 4 >= 192
    require ext_code.size(stor3)
    staticcall stor3.0x96b5d992 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] != msg.sender
    if arg2 > 0:
        if sub_b3557522[arg5][arg6] == arg2:
            revert with 0, 'Signature Already Used'
    require ext_code.size(stor3)
    staticcall stor3.0x96b5d992 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    signer = erecover(sha3(arg1), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == address(ext_call.return_data[0])
    require sub_78669280[arg2]
    require sub_78669280[arg2] != msg.sender
    stor9.length++
    uint8(stor9[stor9.length]) = uint8(arg3)
    require stor9.length == uint32(stor9.length)
    emit 0xa10f25ef: msg.sender, stor9.length
    sub_fffb1479[stor9.length] = msg.sender
    sub_5501d42d[arg2]++
    sub_5501d42d[arg2][sub_5501d42d[arg2]] = stor9.length
    sub_3108e4d7[stor9.length] = arg2
    sub_b3557522[arg5][arg6] = arg2
    return stor9.length
}

function sub_200b1e64(?) {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg2.length > 0
    require arg2.length <= 256
    require ext_code.size(stor3)
    staticcall stor3.0x96b5d992 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] != msg.sender
    mem[ceil32(arg2.length) + 160] = arg4
    _11 = sha3(mem[ceil32(arg2.length) + 160 len 0, 64])
    if sub_46cb96fa[mem[ceil32(arg2.length) + 160 len 0, 64]]:
        revert with 0, 'Signature Already Used'
    require ext_code.size(stor3)
    staticcall stor3.0x96b5d992 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + 416] = arg5
    signer = erecover(sha3(arg1), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == address(ext_call.return_data[0])
    mem[ceil32(arg2.length) + 416 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + arg2.length + 416] = 0
    sub_990581b6.length++
    uint256(sub_990581b6[sub_990581b6.length][]) = Array(len=arg2.length, data=arg2[all])
    require sub_990581b6.length == uint32(sub_990581b6.length)
    mem[(2 * ceil32(arg2.length)) + 416] = msg.sender
    mem[(2 * ceil32(arg2.length)) + 448] = sub_990581b6.length
    emit 0xe819187a: mem[(2 * ceil32(arg2.length)) + 416 len ceil32(arg2.length) + 64]
    sub_78669280[stor4.length] = msg.sender
    sub_fac9c51f[stor4.length] = arg1
    mem[(2 * ceil32(arg2.length)) + 420] = arg1
    mem[(2 * ceil32(arg2.length)) + 452] = sub_990581b6.length
    require ext_code.size(stor3)
    call stor3.0x3ffe60c0 with:
         gas gas_remaining wei
        args mem[(2 * ceil32(arg2.length)) + 420 len ceil32(arg2.length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_46cb96fa[_11] = arg1
    mem[(2 * ceil32(arg2.length)) + 416] = sub_990581b6.length
    return memory
      from (2 * ceil32(arg2.length)) + 416
       len ceil32(arg2.length) + 32
}



}
