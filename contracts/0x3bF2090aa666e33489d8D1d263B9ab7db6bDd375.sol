contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 520]




// =====================  Runtime code  =====================


mapping of uint256 balances;

function balances(address arg1) payable {
    return balances[arg1]
}

function get(address arg1) payable {
    return balances[address(arg1)]
}

function _fallback() payable {
  stop
}

function finalize(address arg1, uint256 arg2) payable {
    if 0 == arg2:
        stor[sha3(mem[0 len 64])] = 0
    else:
        call arg1 with:
           value 5 * balances[address(arg1)] wei
             gas 0 wei
        balances[address(arg1)] = 0
}

function sub_02110d25(?) payable {
    if balances[address(msg.sender)] <= 0:
        if eth.balance(this.address) >= 5 * msg.value:
            balances[address(msg.sender)] = msg.value
            return 0
        else:
            return 0
    else:
        return 0
}



}
