contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
uint256 stor3;

function _fallback() payable {
    stor3 = 0
    stor1 = msg.sender or Mask(96, 160, stor1)
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    call address(ext_call.return_data[0]).0x688dcfd7 with:
         gas gas_remaining - 25050 wei
        args 0x1100000000000000000000000000000000000000000000000000000000000000
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    mem[228] = mem[253 len 7]
    call address(stor0).0x60f66701 with:
         gas gas_remaining - 25050 wei
        args Array(len=7, data=mem[228])
    require ext_call.success
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    mem[452] = mem[481 len 3]
    call address(stor0).0x2ef3accc with:
         gas gas_remaining - 25050 wei
        args 64, 500000, 3, mem[452]
    require ext_call.success
    mem[516] = mem[545 len 3]
    mem[644] = mem[664 len 12]
    call address(stor0).0xc51be90f with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args 120, 128, 192, 500000, 3, mem[516], 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0' >> 256, mem[644]
    require ext_call.success
    return code.data[1551 len 2139]
}



// =====================  Runtime code  =====================


uint128 stor0; offset 160
address stor0;
uint256 stor0;
address stor1;
array of uint256 ETHXBT;
uint256 stor3;

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

function oraclize_setProof(bytes1 arg1) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    call address(ext_call.return_data[0]).0x688dcfd7 with:
         gas gas_remaining - 25050 wei
        args arg1
}

function update() payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[228] = mem[253 len 7]
    call address(ext_call.return_data[0]).0x60f66701 with:
         gas gas_remaining - 25050 wei
        args Array(len=7, data=mem[228])
    require ext_call.success
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[452] = mem[481 len 3]
    call address(stor0.field_0).0x2ef3accc with:
         gas gas_remaining - 25050 wei
        args 64, 500000, 3, mem[452]
    require ext_call.success
    mem[516] = mem[545 len 3]
    mem[644] = mem[664 len 12]
    call address(stor0.field_0).0xc51be90f with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args 120, 128, 192, 500000, 3, mem[516], 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0' >> 256, mem[644]
    require ext_call.success
}

function __callback(bytes32 arg1, string arg2, string arg3) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).0xc281d19e with:
         gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    stor3++
    if stor3 + 1 < 30:
        call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 292] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 317 len 7]
        call address(ext_call.return_data[0]).0x60f66701 with:
             gas gas_remaining - 25050 wei
            args Array(len=7, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 292])
        require ext_call.success
        call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
             gas gas_remaining - 25050 wei
        uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 516] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 545 len 3]
        call address(stor0.field_0).0x2ef3accc with:
             gas gas_remaining - 25050 wei
            args 64, 500000, 3, mem[ceil32(arg2.length) + ceil32(arg3.length) + 516]
        require ext_call.success
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 580] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 609 len 3]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 708] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 728 len 12]
        call address(stor0.field_0).0xc51be90f with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args 120, 128, 192, 500000, 3, mem[ceil32(arg2.length) + ceil32(arg3.length) + 580], 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0' >> 256, mem[ceil32(arg2.length) + ceil32(arg3.length) + 708]
        require ext_call.success
}



}
