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
    return code.data[1546 len 2789]
}



// =====================  Runtime code  =====================


uint128 stor0; offset 160
address stor0;
uint256 stor0;
address stor1;
array of uint256 ETHXBT;
array of uint256 sub_08c2e0bb;
array of uint256 stor99;

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
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
}

function update() payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[228] = mem[253 len 7]
    call address(stor0.field_0).useCoupon(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=7, data=mem[228])
    require ext_call.success
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.0x38cc4831 with:
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

function __callback(bytes32 arg1, string arg2, string arg3) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).cbAddress() with:
         gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    ETHXBT[] = Array(len=arg2.length, data=arg2[all])
    sub_08c2e0bb.length++
    if not sub_08c2e0bb.length <= sub_08c2e0bb.length + 1:
        idx = sub_08c2e0bb.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4
        while sub_08c2e0bb.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
            stor[idx] = 0
            if 31 < stor[idx].length:
                mem[0] = idx
                s = sha3(idx)
                while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    sub_08c2e0bb[sub_08c2e0bb.length][] = Array(len=arg3.length, data=arg3[all])
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 292] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 317 len 7]
    call address(stor0.field_0).useCoupon(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=7, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 292])
    require ext_call.success
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 516] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 545 len 3]
    call address(stor0.field_0).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args 64, 500000, 3, mem[ceil32(arg2.length) + ceil32(arg3.length) + 516]
    require ext_call.success
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 580] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 609 len 3]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 708] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 728 len 12]
    call address(stor0.field_0).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args 60, 128, 192, 500000, 3, mem[ceil32(arg2.length) + ceil32(arg3.length) + 580], 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0' >> 256, mem[ceil32(arg2.length) + ceil32(arg3.length) + 708]
    require ext_call.success
}



}
