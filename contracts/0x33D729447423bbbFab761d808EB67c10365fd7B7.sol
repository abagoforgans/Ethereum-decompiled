contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[36 len 4249]
}



// =====================  Runtime code  =====================


#
#  - verify(bytes32 arg1, string arg2, string arg3)
#
uint128 stor0; offset 160
uint256 stor0;
address stor1;
uint256 stor1;
address stor2;
uint256 stor2;
mapping of address stor3;

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if msg.sender == address(stor2):
        uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function setLookup(address arg1) payable {
    if msg.sender == address(stor2):
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function oraclize_setProof(bytes1 arg1) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).cbAddress() with:
         gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    mem[ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg2.length) + 288] = '                                '
    mem[ceil32(arg2.length) + 320] = '              '
    s = 0
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < 20:
        require s < 46
        if uint8(address(stor3[arg1]) / 2^(8 * -idx + 19)) / 16 <= 9:
            mem[ceil32(arg2.length) + s + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('div', ('mask', 8, 0, ('div', ('type', 160, ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3)))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('div', ('mask', 8, 0, ('div', ('type', 160, ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3)))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) - 256
        else:
            mem[ceil32(arg2.length) + s + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('div', ('mask', 8, 0, ('div', ('type', 160, ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3)))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('div', ('mask', 8, 0, ('div', ('type', 160, ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3)))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) - 256
        require s + 1 < 46
        if address(stor3[arg1]) / 2^(8 * -idx + 19) % 16 <= 9:
            mem[ceil32(arg2.length) + s + 289 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('div', ('type', 160, ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3)))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('div', ('type', 160, ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3)))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))))), 0) - 256
        else:
            mem[ceil32(arg2.length) + s + 289 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, 0, 0, ('div', ('type', 160, ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3)))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, 0, 0, ('div', ('type', 160, ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3)))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))))), 0) - 256
        s = address(stor3[arg1]) / 2^(8 * -idx + 19) % 16
        s = uint8(address(stor3[arg1]) / 2^(8 * -idx + 19)) / 16
        s = address(stor3[arg1]) / 2^(8 * -idx + 19)
        idx = idx + 1
        s = s + 2
        continue 
    mem[ceil32(arg2.length) + 352] = 0
    mem[ceil32(arg2.length) + 384] = 0
    if arg2.length >= 46:
        idx = 0
        while idx < 46:
            require idx < arg2.length
            require idx < 46
            if Mask(8, 248, mem[ceil32(arg2.length) + idx + 288]) >= Mask(8, 248, mem[idx + 128]):
                require idx < arg2.length
                require idx < 46
                if Mask(8, 248, mem[ceil32(arg2.length) + idx + 288]) <= Mask(8, 248, mem[idx + 128]):
                    idx = idx + 1
                    continue 
            call address(stor1).0xcae22f15 with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            call address(stor1).0xe2f8f22d with:
                 gas gas_remaining - 25050 wei
            call address(ext_call.return_data[0]).0xc0056b7b with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0] << 248, uint256(stor3[arg1]), 0, arg1
    else:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < 46
            if Mask(8, 248, mem[ceil32(arg2.length) + idx + 288]) >= Mask(8, 248, mem[idx + 128]):
                require idx < arg2.length
                require idx < 46
                if Mask(8, 248, mem[ceil32(arg2.length) + idx + 288]) <= Mask(8, 248, mem[idx + 128]):
                    idx = idx + 1
                    continue 
            call address(stor1).0xcae22f15 with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            call address(stor1).0xe2f8f22d with:
                 gas gas_remaining - 25050 wei
            call address(ext_call.return_data[0]).0xc0056b7b with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0] << 248, uint256(stor3[arg1]), 0, arg1
    call address(stor1).0xcae22f15 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(stor1).0xe2f8f22d with:
         gas gas_remaining - 25050 wei
    if 46 < arg2.length:
        call address(ext_call.return_data[0]).0xc0056b7b with:
             gas gas_remaining - 25050 wei
            args ext_call.return_data[0] << 248, uint256(stor3[arg1]), 0, arg1
    else:
        if 46 <= arg2.length:
            call address(ext_call.return_data[0]).0xc0056b7b with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0] << 248, uint256(stor3[arg1]), 1, arg1
        else:
            call address(ext_call.return_data[0]).0xc0056b7b with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0] << 248, uint256(stor3[arg1]), 0, arg1
}



}
