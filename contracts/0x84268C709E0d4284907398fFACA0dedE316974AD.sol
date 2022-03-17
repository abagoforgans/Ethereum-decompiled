contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


array of address stor0;
address stor1;
array of uint256 balance;

function getBalance(uint8 arg1) payable {
    require arg1 < stor0.length
    return balance[arg1]
}

function _fallback() payable {
  stop
}

function push() payable {
    idx = 0
    while uint8(idx) < stor0.length:
        require idx < stor0.length
        mem[0] = 0
        mem[100] = stor0[idx]
        mem[132] = balance[idx]
        mem[164] = 0
        mem[196] = 0
        call stor1.deposit(address rg1, uint256 rg2, bytes32 rg3, uint256 rg4) with:
             gas gas_remaining - 25050 wei
            args stor0[idx], balance[idx], 0, 0
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
    return 1
}



}
