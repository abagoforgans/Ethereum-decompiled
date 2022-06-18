contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
array of uint256 stor1;
array of address stor2;
array of uint256 stor4;
mapping of uint8 stor99;

function owner() {
    return address(stor1.length)
}

function _fallback() payable {
    revert
}

function sub_ee583c69(?) {
    require calldata.size - 4 >= 32
    return address(stor0[arg1].field_0), 
           uint256(stor0[arg1].field_256),
           address(stor0[arg1].field_512),
           uint256(stor0[arg1].field_768),
           uint256(stor0[arg1].field_1024)
}

function verify(bytes32[] arg1, bytes32 arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    s = arg3
    while idx < arg1.length:
        require idx < mem[96]
        _17 = mem[(32 * idx) + 128]
        if s >= mem[(32 * idx) + 128]:
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = s
            _21 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_21 + 32 len mem[_21]])
            continue 
        mem[mem[64] + 32] = s
        mem[mem[64] + 64] = _17
        _25 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        idx = idx + 1
        s = sha3(mem[_25 + 32 len mem[_25]])
        continue 
    return (arg2 == s)
}

function createNewAirdrop(bytes32 arg1, address arg2, uint256 arg3, string arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require msg.value >= 2 * 10^17
    mem[ceil32(arg4.length) + 160 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + 160] = 256^(-(arg4.length % 32) + 32) - 1 and mem[ceil32(arg4.length) + floor32(arg4.length) + 160] or call.data[arg4 + floor32(arg4.length) + 36 len arg4.length % 32], Mask(8 * -(arg4.length % 32) + 32, -(8 * -(arg4.length % 32) + 32) + 256, 0) << (8 * -(arg4.length % 32) + 32) - 256 and !(256^(-(arg4.length % 32) + 32) - 1)
    mem[ceil32(arg4.length) + 128] = arg4.length
    require ext_code.size(arg2)
    staticcall arg2.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 
                    32,
                    45,
                    0xfe7468697320636f6e7472616374206d75737420626520616c6c6f77656420746f207370656e6420746f6b656e,
                    mem[ceil32(arg4.length) + arg4.length + 273 len 19]
    address(stor0[mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]]].field_0) = msg.sender
    uint256(stor0[mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]]].field_256) = arg1
    address(stor0[mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]]].field_512) = arg2
    uint256(stor0[mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]]].field_768) = arg3
    uint256(stor0[mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]]].field_1024) = 0
    call address(stor1.length) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cancelAirdrop(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + 128] = arg1.length
    require msg.sender == address(stor0[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_0)
    require uint256(stor0[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_768) - uint256(stor0[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_1024) > 0
    require ext_code.size(address(stor0[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_512))
    staticcall address(stor0[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_512).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < uint256(stor0[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_768) - uint256(stor0[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_1024):
        revert with 0, 'not enough tokens'
    require ext_code.size(address(stor0[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_512))
    call address(stor0[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_512).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, uint256(stor0[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_768) - uint256(stor0[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_1024)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function drop(bytes32[] arg1, address arg2, uint256 arg3, string arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg4.length
    mem[(32 * arg1.length) + 160 len arg4.length] = arg4[all]
    mem[(32 * arg1.length) + arg4.length + 160] = 0
    mem[(32 * arg1.length) + ceil32(arg4.length) + 192] = arg2
    mem[(32 * arg1.length) + ceil32(arg4.length) + 224] = arg3
    mem[(32 * arg1.length) + ceil32(arg4.length) + 160] = 64
    mem[(32 * arg1.length) + ceil32(arg4.length) + 288] = sha3(mem[(32 * arg1.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg1.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
    mem[(32 * arg1.length) + ceil32(arg4.length) + 256] = 32
    mem[(32 * arg1.length) + ceil32(arg4.length) + 352 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(32 * arg1.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32] = mem[(32 * arg1.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32]
    mem[(32 * arg1.length) + ceil32(arg4.length) + 320] = arg4.length
    mem[64] = arg4.length + (32 * arg1.length) + ceil32(arg4.length) + 352
    mem[0] = sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg1.length) + ceil32(arg4.length) + floor32(arg4.length) + 352 len arg4.length % 32])
    mem[32] = 0
    _54 = sha3(sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg1.length) + ceil32(arg4.length) + floor32(arg4.length) + 352 len arg4.length % 32]), 0)
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < mem[96]
        _89 = mem[(32 * idx) + 128]
        if s + sha3(mem[(32 * arg1.length) + ceil32(arg4.length) + 288]) >= mem[(32 * idx) + 128]:
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = s + sha3(mem[(32 * arg1.length) + ceil32(arg4.length) + 288])
            _91 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_91 + 32 len mem[_91]])
            continue 
        mem[mem[64] + 32] = s + sha3(mem[(32 * arg1.length) + ceil32(arg4.length) + 288])
        mem[mem[64] + 64] = _89
        _95 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        idx = idx + 1
        s = sha3(mem[_95 + 32 len mem[_95]])
        continue 
    require uint256(stor1[_54]) == s
    if uint8(stor[_54 + 5][address(arg2)]):
        revert with 0, 'double spend'
    mem[0] = arg2
    mem[32] = _54 + 5
    uint8(stor[_54 + 5][address(arg2)]) = 1
    stor4[_54] += arg3
    require ext_code.size(stor2[_54])
    staticcall stor2[_54].allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(stor[_54]), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 
                    32,
                    45,
                    0xfe7468697320636f6e7472616374206d75737420626520616c6c6f77656420746f207370656e6420746f6b656e,
                    mem[mem[64] + 113 len 19]
    mem[mem[64] + 36] = arg2
    mem[mem[64] + 68] = arg3
    require ext_code.size(stor2[_54])
    call stor2[_54].transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(stor[_54]), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[mem[64] + 32] = arg3
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
    _113 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 96 len ceil32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len ceil32(mem[(32 * arg1.length) + 128])]
    if not _113 % 32:
        emit Drop(string arg1, address arg2, uint256 arg3):
                  64,
                  arg3,
                  mem[mem[64] + 64 len _113 + 32],
                  arg2,
    else:
        mem[floor32(_113) + mem[64] + 96] = mem[floor32(_113) + mem[64] + -(_113 % 32) + 128 len _113 % 32]
        emit Drop(string arg1, address arg2, uint256 arg3):
                  64,
                  arg3,
                  mem[mem[64] + 64 len floor32(_113) + 64],
                  arg2,
}



}
