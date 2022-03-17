contract main {


// =======================  Init code  ======================


address stor2;

function _fallback() payable {
    stor2 = 0xcbf44b4df14b264062afa9f2486142335a983857
    call stor2.0xa4c8a1c1 with:
         gas gas_remaining - 25050 wei
        args 0, 0, 128, 192, 288, 3, 'URL', 54, 'json(https://shapeshift.io/senda', 'mount).success.deposit', 88, '{"pair": "eth_btc", "amount": "0', '.2", "withdrawal": "1AAcCo21EUc1', 'jbocjssSQDzLna9Vem2UN5"}'
    require ext_call.success
    return code.data[539 len 1855]
}



// =====================  Runtime code  =====================


array of uint256 ETHXBT;
address sub_84bf84a7Address;
uint256 stor1;
address stor2;

function sub_84bf84a7(?) payable {
    return address(sub_84bf84a7Address)
}

function ETHXBT() payable {
    return ETHXBT[0 len ETHXBT.length]
}

function kill() payable {
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function update() payable {
    call stor2.0xa4c8a1c1 with:
         gas gas_remaining - 25050 wei
        args 0, 0, 128, 192, 288, 3, 'URL', 54, 'json(https://shapeshift.io/senda', 'mount).success.deposit', 88, '{"pair": "eth_btc", "amount": "0', '.2", "withdrawal": "1AAcCo21EUc1', 'jbocjssSQDzLna9Vem2UN5"}'
    require ext_call.success
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[64] = ceil32(arg2.length) + 160
    mem[ceil32(arg2.length) + 128] = 0
    call stor2.0x4c773795 with:
         gas gas_remaining - 25050 wei
    mem[ceil32(arg2.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    mem[0] = 0
    ETHXBT[] = Array(len=arg2.length, data=arg2[all])
    idx = 2
    s = 0
    s = 0
    while idx < 22:
        require idx < arg2.length
        if mem[idx + 128 len 1] < 97:
            if mem[idx + 128 len 1] > 102:
                if mem[idx + 128 len 1] < 48:
                    if mem[idx + 128 len 1] > 57:
                        idx = idx + 1
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + mem[idx + 128 len 1]
                        continue 
                idx = idx + 1
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + mem[idx + 128 len 1] - 48
                continue 
        if address(mem[idx + 128 len 1] - 87) < 48:
            if address(mem[idx + 128 len 1] - 87) > 57:
                idx = idx + 1
                s = mem[idx + 128 len 1] - 87
                s = (256 * s) + mem[idx + 128 len 1] - 87
                continue 
        idx = idx + 1
        s = mem[idx + 128 len 1] - 135
        s = (256 * s) + mem[idx + 128 len 1] - 135
        continue 
    uint256(stor1) = s or Mask(96, 160, uint256(stor1))
}



}
