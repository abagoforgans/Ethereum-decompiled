contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 700]




// =====================  Runtime code  =====================


array of address stor0;
mapping of uint256 balances;
array of uint256 stor2;
mapping of uint256 investors;
uint256 stor4;
uint256 stor5;

function balances(address arg1) payable {
    return balances[arg1]
}

function get() payable {
    return balances[address(msg.sender)]
}

function investors(address arg1) payable {
    return investors[arg1]
}

function _fallback() payable {
  stop
}

function invest() payable {
    if investors[address(msg.sender)]:
        investors[address(msg.sender)] += msg.value
    else:
        require stor5 < stor2.length
        stor2[stor5] = msg.sender or Mask(96, 160, stor2[stor5])
        stor5++
        investors[2] += msg.value
}

function sub_89ac5d13(?) payable {
    mem[0] = msg.sender
    if balances[address(msg.sender)] <= 0:
        idx = 0
        s = 0
        while idx < stor4:
            require idx < stor0.length
            mem[0] = address(stor0[idx])
            idx = idx + 1
            s = (5 * balances[address(stor0[idx])]) + s
            continue 
        if eth.balance(this.address) - (5 * stor[_13] * stor4) < 5 * msg.value:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            balances[mem[0]] = msg.value
            require stor4 < stor0.length
            uint256(stor0[stor4]) = msg.sender or Mask(96, 160, uint256(stor0[stor4]))
            stor4++
        return 0
    else:
        return 0
}



}
