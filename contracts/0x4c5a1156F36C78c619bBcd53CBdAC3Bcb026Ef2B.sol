contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = 0xcbf44b4df14b264062afa9f2486142335a983857
    call stor1.0xa4c8a1c1 with:
         gas gas_remaining - 25050 wei
        args 0, 0, 128, 192, 288, 3, 'URL', 54, 'json(https://shapeshift.io/senda', 'mount).success.deposit', 88, '{"pair": "eth_btc", "amount": "0', '.2", "withdrawal": "1AAcCo21EUc1', 'jbocjssSQDzLna9Vem2UN5"}'
    require ext_call.success
    return code.data[539 len 1391]
}



// =====================  Runtime code  =====================


address sub_84bf84a7Address;
address stor1;

function sub_84bf84a7(?) payable {
    return sub_84bf84a7Address
}

function kill() payable {
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function __callback(bytes32 arg1, string arg2) payable {
    call stor1.0x4c773795 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    sub_84bf84a7Address = 0
}

function update() payable {
    call stor1.0xa4c8a1c1 with:
         gas gas_remaining - 25050 wei
        args 0, 0, 128, 192, 288, 3, 'URL', 54, 'json(https://shapeshift.io/senda', 'mount).success.deposit', 88, '{"pair": "eth_btc", "amount": "0', '.2", "withdrawal": "1AAcCo21EUc1', 'jbocjssSQDzLna9Vem2UN5"}'
    require ext_call.success
}



}
