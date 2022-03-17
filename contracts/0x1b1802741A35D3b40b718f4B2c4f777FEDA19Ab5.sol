contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x1000000000000000000000000000000000000000000000000000000000000000
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    mem[228] = mem[253 len 7]
    call address(stor0).useCoupon(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=7, data=mem[228])
    require ext_call.success
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    mem[420] = mem[449 len 3]
    call address(stor0).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[420])
    require ext_call.success
    mem[484] = mem[513 len 3]
    mem[612] = mem[632 len 12]
    call address(stor0).query(uint256 rg1, string rg2, string rg3) with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args 60, 96, 160, 3, mem[484], 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0' >> 256, mem[612]
    require ext_call.success
    return code.data[1524 len 2767]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2, string arg3)
#
address stor0;
uint256 stor0;
address stor1;
array of uint256 ETHXBT;
array of uint256 sub_08c2e0bb;

function sub_08c2e0bb(?) payable {
    return sub_08c2e0bb[arg1][0 len sub_08c2e0bb[arg1].length]
}

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

function sub_5ad77157(?) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
}

function update() payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    mem[228] = mem[253 len 7]
    call address(stor0).useCoupon(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=7, data=mem[228])
    require ext_call.success
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    mem[420] = mem[449 len 3]
    call address(stor0).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[420])
    require ext_call.success
    mem[484] = mem[513 len 3]
    mem[612] = mem[632 len 12]
    call address(stor0).query(uint256 rg1, string rg2, string rg3) with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args 60, 96, 160, 3, mem[484], 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0' >> 256, mem[612]
    require ext_call.success
}



}
