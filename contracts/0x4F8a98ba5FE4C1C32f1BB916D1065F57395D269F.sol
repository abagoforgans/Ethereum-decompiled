contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 705]




// =====================  Runtime code  =====================


mapping of uint256 balances;

function balances(address arg1) payable {
    return balances[arg1]
}

function get() payable {
    return balances[address(msg.sender)]
}

function _fallback() payable {
  stop
}

function finalize(address arg1, uint256 arg2) payable {
    if msg.sender == 0x3c94923400ccc528e8ab0f849edafca06fe332e5:
        if arg2 <= 0:
            stor[sha3(mem[0 len 64])] = 0
        else:
            call arg1 with:
               value 5 * balances[address(arg1)] wei
                 gas 0 wei
            balances[address(arg1)] = 0
}

function sub_02110d25(?) payable {
    if balances[address(msg.sender)] <= 0:
        emit log(11);
        if eth.balance(this.address) < 5 * msg.value:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            balances[address(msg.sender)] = 5 * msg.value
            emit log(12);
        return 0
    else:
        return 0
}



}
