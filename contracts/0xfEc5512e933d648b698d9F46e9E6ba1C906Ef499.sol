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
    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x1100000000000000000000000000000000000000000000000000000000000000
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    mem[228] = mem[253 len 7]
    call address(stor0).useCoupon(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=7, data=mem[228])
    require ext_call.success
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    mem[452] = mem[481 len 3]
    call address(stor0).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args 64, 500000, 3, mem[452]
    require ext_call.success
    mem[516] = mem[545 len 3]
    mem[644] = mem[664 len 12]
    call address(stor0).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args 60, 128, 192, 500000, 3, mem[516], 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0' >> 256, mem[644]
    require ext_call.success
    return code.data[1546 len 2212]
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

function oraclize_setProof(bytes1 arg1) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
}

function __callback(bytes32 arg1, string arg2, bytes arg3) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).cbAddress() with:
         gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    ETHXBT[] = Array(len=arg2.length, data=arg2[all])
}

function update() payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[228] = mem[253 len 7]
    call address(ext_call.return_data[0]).useCoupon(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=7, data=mem[228])
    require ext_call.success
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[452] = mem[481 len 3]
    call address(stor0.field_0).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args 64, 500000, 3, mem[452]
    require ext_call.success
    mem[516] = mem[545 len 3]
    mem[644] = mem[664 len 12]
    call address(stor0.field_0).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args 60, 128, 192, 500000, 3, mem[516], 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0' >> 256, mem[644]
    require ext_call.success
}



}
