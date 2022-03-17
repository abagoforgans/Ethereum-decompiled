contract main {


// =======================  Init code  ======================


uint8 stor2; offset 152
address stor2;

function _fallback() payable {
    Mask(152, 0, stor2.field_0) = 0x47a8033cc6d6ca2ed5044674fd421f44884de8
    uint8(stor2.field_152) = 0
    return code.data[55 len 5370]
}



// =====================  Runtime code  =====================


#
#  - verify(bytes32 arg1, string arg2, string arg3)
#  - verifyUrl(string arg1, string arg2)
#
uint128 stor0; offset 160
address stor0;
uint256 stor0;
address stor1;
uint256 stor1;
address stor2;
uint256 stor2;
mapping of uint256 stor3;
mapping of uint8 stor4;

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

function score(bytes32 arg1, string arg2) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[ceil32(arg2.length) + 292] = mem[ceil32(arg2.length) + 311 len 13]
    call address(stor0.field_0).useCoupon(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=13, data=mem[ceil32(arg2.length) + 292])
    require ext_call.success
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[ceil32(arg2.length) + 420] = mem[ceil32(arg2.length) + 449 len 3]
    call address(stor0.field_0).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[ceil32(arg2.length) + 420])
    require ext_call.success
    mem[ceil32(arg2.length) + 484] = mem[ceil32(arg2.length) + 513 len 3]
    mem[ceil32(arg2.length) + 548] = mem[ceil32(arg2.length) + 566 len 14]
    call address(stor0.field_0).query(uint256 rg1, string rg2, string rg3) with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args 0, 96, 160, 3, mem[ceil32(arg2.length) + 484], 14, mem[ceil32(arg2.length) + 548]
    require ext_call.success
    stor3[ext_call.return_data[0]] = arg1
    stor4[ext_call.return_data[0]] = 0
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).cbAddress() with:
         gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    if not stor4[arg1]:
        call address(stor1).0xcae22f15 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        call address(stor1).0xe2f8f22d with:
             gas gas_remaining - 25050 wei
        call address(ext_call.return_data[0]).0x287977d6 with:
             gas gas_remaining - 25050 wei
            args ext_call.return_data[0] << 248, stor3[arg1], 0
    else:
        mem[ceil32(arg2.length) + 128] = 0
        mem[ceil32(arg2.length) + 160] = 0
        mem[ceil32(arg2.length) + 192] = 0
        s = 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while idx < 32:
            require s < 64
            if uint8(stor3[arg1] / 2^(8 * -idx + 31)) / 16 <= 9:
                mem[ceil32(arg2.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('div', ('mask', 8, 0, ('div', ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 16))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('div', ('mask', 8, 0, ('div', ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 16))), 0) - 256
            else:
                mem[ceil32(arg2.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('div', ('mask', 8, 0, ('div', ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 16))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('div', ('mask', 8, 0, ('div', ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 16))), 0) - 256
            require s + 1 < 64
            if stor3[arg1] / 2^(8 * -idx + 31) % 16 <= 9:
                mem[ceil32(arg2.length) + s + 321 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('div', ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('div', ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))))), 0) - 256
            else:
                mem[ceil32(arg2.length) + s + 321 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, 0, 0, ('div', ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, 0, 0, ('div', ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))))), 0) - 256
            s = stor3[arg1] / 2^(8 * -idx + 31) % 16
            s = uint8(stor3[arg1] / 2^(8 * -idx + 31)) / 16
            s = stor3[arg1] / 2^(8 * -idx + 31)
            idx = idx + 1
            s = s + 2
            continue 
        mem[ceil32(arg2.length) + 2368] = 0
        mem[ceil32(arg2.length) + 2400] = 0
        if arg2.length >= 64:
            idx = 0
            while idx < 64:
                require idx < arg2.length
                require idx < 64
                if Mask(8, 248, mem[ceil32(arg2.length) + idx + 320]) >= Mask(8, 248, mem[idx + 128]):
                    require idx < arg2.length
                    require idx < 64
                    if Mask(8, 248, mem[ceil32(arg2.length) + idx + 320]) <= Mask(8, 248, mem[idx + 128]):
                        idx = idx + 1
                        continue 
                call address(stor1).0xcae22f15 with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
                call address(stor1).0xe2f8f22d with:
                     gas gas_remaining - 25050 wei
                call address(ext_call.return_data[0]).0xc0056b7b with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0] << 248, stor3[arg1], 0, arg1
                stor3[arg1] = 0
                stor4[arg1] = 0
        else:
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < 64
                if Mask(8, 248, mem[ceil32(arg2.length) + idx + 320]) >= Mask(8, 248, mem[idx + 128]):
                    require idx < arg2.length
                    require idx < 64
                    if Mask(8, 248, mem[ceil32(arg2.length) + idx + 320]) <= Mask(8, 248, mem[idx + 128]):
                        idx = idx + 1
                        continue 
                call address(stor1).0xcae22f15 with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
                call address(stor1).0xe2f8f22d with:
                     gas gas_remaining - 25050 wei
                call address(ext_call.return_data[0]).0xc0056b7b with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0] << 248, stor3[arg1], 0, arg1
                stor3[arg1] = 0
                stor4[arg1] = 0
        call address(stor1).0xcae22f15 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        call address(stor1).0xe2f8f22d with:
             gas gas_remaining - 25050 wei
        if 64 < arg2.length:
            call address(ext_call.return_data[0]).0xc0056b7b with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0] << 248, stor3[arg1], 0, arg1
        else:
            if 64 <= arg2.length:
                call address(ext_call.return_data[0]).0xc0056b7b with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0] << 248, stor3[arg1], 1, arg1
            else:
                call address(ext_call.return_data[0]).0xc0056b7b with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0] << 248, stor3[arg1], 0, arg1
    stor3[arg1] = 0
    stor4[arg1] = 0
}



}
