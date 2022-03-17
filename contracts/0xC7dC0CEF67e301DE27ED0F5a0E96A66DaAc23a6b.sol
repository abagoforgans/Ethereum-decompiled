contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;

function _fallback() payable {
    stor2 = 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8
    stor0 = msg.sender or Mask(96, 160, stor0)
    call stor2.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data='URL')
    call address(ext_call.return_data[0]) with:
       value ext_call.return_data[0] wei
         gas 0 wei
    call address(ext_call.return_data[0]).0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 60, 96, 160, 3, 'URL', 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
    return code.data[813 len 1788]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 ETHXBT;
address stor2;

function ETHXBT() payable {
    return ETHXBT[0 len ETHXBT.length]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function update() payable {
    call stor2.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data='URL')
    call address(ext_call.return_data[0]) with:
       value ext_call.return_data[0] wei
         gas 0 wei
    call address(ext_call.return_data[0]).0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 60, 96, 160, 3, 'URL', 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
}

function __callback(bytes32 arg1, string arg2) payable {
    call stor2.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x4c773795 with:
         gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    ETHXBT[] = Array(len=arg2.length, data=arg2[all])
    call stor2.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data='URL')
    call address(ext_call.return_data[0]) with:
       value ext_call.return_data[0] wei
         gas 0 wei
    call address(ext_call.return_data[0]).0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 60, 96, 160, 3, 'URL', 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
}



}
