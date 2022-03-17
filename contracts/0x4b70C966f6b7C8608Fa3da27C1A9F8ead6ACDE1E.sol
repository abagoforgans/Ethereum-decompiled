contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    mem[356] = mem[385 len 3]
    call address(stor0).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[356])
    require ext_call.success
    mem[420] = mem[449 len 3]
    mem[548] = mem[568 len 12]
    call address(stor0).0xadf59f99 with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args 60, 96, 160, 3, mem[420], 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0' >> 256, mem[548]
    require ext_call.success
    return code.data[880 len 6137]
}



// =====================  Runtime code  =====================


uint128 stor0; offset 160
address stor0;
uint256 stor0;
address stor1;
array of uint256 ETHXBT;

function ETHXBT() payable {
    return ETHXBT[0 len ETHXBT.length]
}

function kill() payable {
    if stor1 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_d5948770(?) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).0x4c773795 with:
         gas gas_remaining - 25050 wei
    return ext_call.return_data[12 len 20]
}

function oraclize_query(uint256 arg1, string arg2, string arg3) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    call address(stor0.field_0).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=arg2.length, data=arg2[all])
    require ext_call.success
    call address(stor0.field_0).0xadf59f99 with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 128
    require ext_call.success
    return ext_call.return_data[0]
}

function oraclize_query(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    call address(stor0.field_0).0x2ef3accc with:
         gas gas_remaining - 25050 wei
        args Array(len=arg2.length, data=arg2[all]), arg4
    require ext_call.success
    call address(stor0.field_0).0x38592832 with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160, arg4
    require ext_call.success
    return ext_call.return_data[0]
}

function update() payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[356] = mem[385 len 3]
    call address(stor0.field_0).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[356])
    require ext_call.success
    mem[420] = mem[449 len 3]
    mem[548] = mem[568 len 12]
    call address(stor0.field_0).0xadf59f99 with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args 60, 96, 160, 3, mem[420], 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0' >> 256, mem[548]
    require ext_call.success
}

function oraclize_query(uint256 arg1, string arg2, string arg3, string arg4) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    call address(stor0.field_0).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=arg2.length, data=arg2[all])
    require ext_call.success
    if not arg3.length % 32:
        call address(stor0.field_0).0x77228659 with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160, arg3.length + arg2.length + 192
    else:
        call address(stor0.field_0).0x77228659 with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160, floor32(arg3.length) + arg2.length + 224
    require ext_call.success
    return ext_call.return_data[0]
}

function oraclize_query(uint256 arg1, string arg2, string arg3, string arg4, uint256 arg5) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    call address(stor0.field_0).0x2ef3accc with:
         gas gas_remaining - 25050 wei
        args Array(len=arg2.length, data=arg2[all]), arg5
    require ext_call.success
    if not arg3.length % 32:
        call address(stor0.field_0).0xfbf80418 with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg3.length + arg2.length + 224, arg5
    else:
        call address(stor0.field_0).0xfbf80418 with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, floor32(arg3.length) + arg2.length + 256, arg5
    require ext_call.success
    return ext_call.return_data[0]
}

function __callback(bytes32 arg1, string arg2) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).0x4c773795 with:
         gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    ETHXBT[] = Array(len=arg2.length, data=arg2[all])
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[ceil32(arg2.length) + 388] = mem[ceil32(arg2.length) + 417 len 3]
    call address(stor0.field_0).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[ceil32(arg2.length) + 388])
    require ext_call.success
    mem[ceil32(arg2.length) + 452] = mem[ceil32(arg2.length) + 481 len 3]
    mem[ceil32(arg2.length) + 580] = mem[ceil32(arg2.length) + 600 len 12]
    call address(stor0.field_0).0xadf59f99 with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args 60, 96, 160, 3, mem[ceil32(arg2.length) + 452], 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0' >> 256, mem[ceil32(arg2.length) + 580]
    require ext_call.success
}

function oraclize_query(string arg1, string arg2) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    call address(stor0.field_0).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(stor0.field_0).0xadf59f99 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, arg1.length + 128, arg1.length, arg1[all], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
            call address(stor0.field_0).0xadf59f99 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, arg1.length + 128, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 324 len -(arg2.length % 32) + 32]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 324 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(stor0.field_0).0xadf59f99 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 292 len -(arg1.length % 32) + 32], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
            call address(stor0.field_0).0xadf59f99 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 292 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 356 len -(arg2.length % 32) + 32]
    require ext_call.success
    return ext_call.return_data[0]
}

function oraclize_query(string arg1, string arg2, string arg3) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    call address(stor0.field_0).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 356 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 388 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 420 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                call address(stor0.field_0).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, arg1.length + 160, arg2.length + arg1.length + 192, arg1.length, arg1[all], arg2.length, arg2[all], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 420] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
                call address(stor0.field_0).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, arg1.length + 160, arg2.length + arg1.length + 192, arg1.length, arg1[all], arg2.length, arg2[all], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + arg3.length + 420 len -(arg3.length % 32) + 32]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 388] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 420 len arg2.length % 32]
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 452 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                call address(stor0.field_0).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, arg1.length + 160, floor32(arg2.length) + arg1.length + 224, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 388 len -(arg2.length % 32) + 32], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 452] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 484 len arg3.length % 32]
                call address(stor0.field_0).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, arg1.length + 160, floor32(arg2.length) + arg1.length + 224, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 388 len -(arg2.length % 32) + 32], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + floor32(arg2.length) + arg3.length + 452 len -(arg3.length % 32) + 32]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 356] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 388 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 420 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 452 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                call address(stor0.field_0).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, floor32(arg1.length) + 192, arg2.length + floor32(arg1.length) + 224, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 356 len -(arg1.length % 32) + 32], arg2.length, arg2[all], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 452] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 484 len arg3.length % 32]
                call address(stor0.field_0).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, floor32(arg1.length) + 192, arg2.length + floor32(arg1.length) + 224, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 356 len -(arg1.length % 32) + 32], arg2.length, arg2[all], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + arg3.length + 452 len -(arg3.length % 32) + 32]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 420] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 452 len arg2.length % 32]
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 484 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                call address(stor0.field_0).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, floor32(arg1.length) + 192, floor32(arg2.length) + floor32(arg1.length) + 256, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 356 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 420 len -(arg2.length % 32) + 32], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 484] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 516 len arg3.length % 32]
                call address(stor0.field_0).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, floor32(arg1.length) + 192, floor32(arg2.length) + floor32(arg1.length) + 256, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 356 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 420 len -(arg2.length % 32) + 32], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + arg3.length + 484 len -(arg3.length % 32) + 32]
    require ext_call.success
    return ext_call.return_data[0]
}



}
