contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xfa5186a0af28454ba31bfc7b1100880b01b2051d
    call stor0.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 60, 96, 160, 3, 'URL', 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
    require ext_call.success
    return code.data[441 len 1207]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 ETHXBT;

function ETHXBT() payable {
    return ETHXBT[0 len ETHXBT.length]
}

function _fallback() payable {
  stop
}

function update() payable {
    call stor0.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 60, 96, 160, 3, 'URL', 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
    require ext_call.success
}

function __callback(bytes32 arg1, string arg2) payable {
    call stor0.0x4c773795 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    ETHXBT[] = Array(len=arg2.length, data=arg2[all])
    call stor0.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 60, 96, 160, 3, 'URL', 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
    require ext_call.success
}



}
