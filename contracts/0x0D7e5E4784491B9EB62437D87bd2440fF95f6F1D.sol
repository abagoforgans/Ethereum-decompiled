contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = 0xfa5186a0af28454ba31bfc7b1100880b01b2051d
    call stor1.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 0, 96, 160, 3, 'URL', 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
    require ext_call.success
    return code.data[441 len 1257]
}



// =====================  Runtime code  =====================


array of uint256 ETHXBT;
address stor1;

function ETHXBT() payable {
    return ETHXBT[0 len ETHXBT.length]
}

function kill() payable {
    selfdestruct(0x47a8033cc6d6ca2ed5044674fd421f44884de8)
}

function _fallback() payable {
  stop
}

function update() payable {
    call stor1.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 0, 96, 160, 3, 'URL', 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
    require ext_call.success
}

function __callback(bytes32 arg1, string arg2) payable {
    call stor1.0x4c773795 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    ETHXBT[] = Array(len=arg2.length, data=arg2[all])
    call stor1.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 96, 160, 3, 'URL', 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHXBT).result.', 'XETHXXBT.c.0'
    require ext_call.success
}



}
