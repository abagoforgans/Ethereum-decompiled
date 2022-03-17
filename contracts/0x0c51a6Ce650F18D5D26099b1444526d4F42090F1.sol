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
    return code.data[875 len 2817]
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
    return 0
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
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=arg2.length, data=arg2[all])
    require ext_call.success
    call address(ext_call.return_data[0]) with:
       value ext_call.return_data[0] wei
         gas 0 wei
    if not arg3.length % 32:
        call address(stor0.field_0).query2(uint256 rg1, string rg2, string rg3, string rg4) with:
             gas gas_remaining - 25050 wei
            args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160, arg3.length + arg2.length + 192
    else:
        call address(stor0.field_0).query2(uint256 rg1, string rg2, string rg3, string rg4) with:
             gas gas_remaining - 25050 wei
            args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160, floor32(arg3.length) + arg2.length + 224
    require ext_call.success
    return 0
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



}
