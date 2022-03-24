contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
bool stor8; offset 256
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 16
uint256 stor9;
uint16 stor10;

function _fallback() payable {
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    stor1 = code.data[3022 len 32]
    stor2 = code.data[3054 len 32]
    stor3 = code.data[3086 len 32]
    stor4 = code.data[3118 len 32]
    uint8(stor8.field_0) = 1
    uint8(stor8.field_8) = 0
    Mask(240, 0, stor8.field_16) = Mask(240, 0, code.data[3150 len 32])
    stor8.field_256 % 1 = 0
    stor9 = code.data[3182 len 32]
    stor10 = uint16(code.data[3150 len 32])
    return code.data[167 len 2855]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of struct escrows;
uint16 stor8;
uint256 stor9;
uint16 stor10;
mapping of uint256 buyers;
uint16 stor12;

function escrows(uint256 arg1) payable {
    return escrows[arg1].field_0, 
           escrows[arg1].field_256,
           escrows[arg1].field_512,
           escrows[arg1].field_768,
           escrows[arg1].field_1024,
           escrows[arg1].field_1280
}

function buyers(address arg1) payable {
    return buyers[address(arg1)]
}

function _fallback() payable {
  stop
}

function data() payable {
    return stor0, stor1, stor2, stor3, stor4, stor5, stor6, stor8, stor8, stor9, stor10, stor10, stor12
}

function kill() payable {
    delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0xce67e19d with:
         gas gas_remaining - 50 wei
        args 0
    require delegate.return_code
}

function unbuy() payable {
    delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0xc53d1d06 with:
         gas gas_remaining - 50 wei
        args 0
    require delegate.return_code
}

function getFees() payable {
    delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0x2271025b with:
         gas gas_remaining - 50 wei
        args 0
    require delegate.return_code
}

function getMoney(uint256 arg1) payable {
    delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0xa7cbb778 with:
         gas gas_remaining - 50 wei
        args 0, arg1
    require delegate.return_code
}

function cancel(string arg1, uint256 arg2) payable {
    mem[ceil32(arg1.length) + 260 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0x58c4c7c6 with:
             gas gas_remaining - 50 wei
            args 0, 96, arg2, arg1.length, arg1[all]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 260] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 292 len arg1.length % 32]
        delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0x58c4c7c6 with:
             gas gas_remaining - 50 wei
            args 0, 96, arg2, arg1.length, arg1[all], mem[ceil32(arg1.length) + arg1.length + 260 len -(arg1.length % 32) + 32]
    require delegate.return_code
}

function sub_ba491b78(?) payable {
    mem[ceil32(arg2.length) + 324 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0x6c2e14f0 with:
             gas gas_remaining - 50 wei
            args 0, 0, arg1, 160, arg3, arg4 << 240, arg2.length, arg2[all]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
        delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0x6c2e14f0 with:
             gas gas_remaining - 50 wei
            args 0, 0, arg1, 160, arg3, arg4 << 240, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 324 len -(arg2.length % 32) + 32]
    require delegate.return_code
}

function no(uint256 arg1, string arg2, uint256 arg3) payable {
    mem[ceil32(arg2.length) + 292 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0xd537fb66 with:
             gas gas_remaining - 50 wei
            args 0, 0, arg1, 128, arg3, arg2.length, arg2[all]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 292] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 324 len arg2.length % 32]
        delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0xd537fb66 with:
             gas gas_remaining - 50 wei
            args 0, 0, arg1, 128, arg3, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 292 len -(arg2.length % 32) + 32]
    require delegate.return_code
}

function yes(uint256 arg1, string arg2, uint256 arg3) payable {
    mem[ceil32(arg2.length) + 292 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0x55eac490 with:
             gas gas_remaining - 50 wei
            args 0, 0, arg1, 128, arg3, arg2.length, arg2[all]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 292] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 324 len arg2.length % 32]
        delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0x55eac490 with:
             gas gas_remaining - 50 wei
            args 0, 0, arg1, 128, arg3, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 292 len -(arg2.length % 32) + 32]
    require delegate.return_code
}

function buy(uint256 arg1, string arg2, uint256 arg3, uint16 arg4) payable {
    mem[ceil32(arg2.length) + 324 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0x55007fa with:
             gas gas_remaining - 50 wei
            args 0, 0, arg1, 160, arg3, arg4 << 240, arg2.length, arg2[all]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
        delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0x55007fa with:
             gas gas_remaining - 50 wei
            args 0, 0, arg1, 160, arg3, arg4 << 240, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 324 len -(arg2.length % 32) + 32]
    require delegate.return_code
}

function sub_3cc08a46(?) payable {
    mem[ceil32(arg2.length) + 388 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0x636c599a with:
             gas gas_remaining - 50 wei
            args 0, 0, arg1, 224, arg3, arg4 << 240, address(arg5), arg6, arg2.length, arg2[all]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 388] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 420 len arg2.length % 32]
        delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0x636c599a with:
             gas gas_remaining - 50 wei
            args 0, 0, arg1, 224, arg3, arg4 << 240, address(arg5), arg6, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 388 len -(arg2.length % 32) + 32]
    require delegate.return_code
}

function arbYes(uint256 arg1, address arg2, uint256 arg3, string arg4, uint256 arg5) payable {
    mem[ceil32(arg4.length) + 356 len arg4.length] = arg4[all]
    if not arg4.length % 32:
        delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0xa4719439 with:
             gas gas_remaining - 50 wei
            args 0, 0, arg1, address(arg2), arg3, 192, arg5, arg4.length, arg4[all]
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + 356] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 388 len arg4.length % 32]
        delegate 0x80dfd0b5de315744876bba173e46225afb1a7a67.0xa4719439 with:
             gas gas_remaining - 50 wei
            args 0, 0, arg1, address(arg2), arg3, 192, arg5, arg4.length, arg4[all], mem[ceil32(arg4.length) + arg4.length + 356 len -(arg4.length % 32) + 32]
    require delegate.return_code
}



}
