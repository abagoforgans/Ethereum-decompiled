contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 1377]
}



// =====================  Runtime code  =====================


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

function update() payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    call address(ext_call.return_data[0]).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args 'URL'
    call address(ext_call.return_data[0]) with:
       value ext_call.return_data[0] wei
         gas 0 wei
    call address(stor0).query(uint256 rg1, string rg2, string rg3) with:
         gas gas_remaining - 25050 wei
        args 0, 60, 96, 160, 3, 0x55524c0000000000000000000000000000000000000000000000000000000000, 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
}

function __callback(bytes32 arg1, string arg2) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    call address(ext_call.return_data[0]).0x4c773795 with:
         gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    ETHXBT[] = Array(len=arg2.length, data=arg2[all])
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    call address(ext_call.return_data[0]).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args 'URL'
    call address(ext_call.return_data[0]) with:
       value ext_call.return_data[0] wei
         gas 0 wei
    call address(stor0).query(uint256 rg1, string rg2, string rg3) with:
         gas gas_remaining - 25050 wei
        args 60, 96, 160, 3, 0x55524c0000000000000000000000000000000000000000000000000000000000, 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
}



}
