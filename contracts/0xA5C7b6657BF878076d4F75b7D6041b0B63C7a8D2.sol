contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 567]




// =====================  Runtime code  =====================


mapping of uint256 balances;
array of uint256 stor6;
mapping of uint256 investors;
uint256 stor12;
uint256 stor13;

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
    if not investors[address(msg.sender)]:
        require stor13 < 5
        stor6[stor13] = msg.sender or Mask(96, 160, stor6[stor13])
        stor13++
    investors[address(msg.sender)] += msg.value
}

function sub_89ac5d13(?) payable {
    mem[0] = msg.sender
    if balances[address(msg.sender)] <= 0:
        idx = 0
        s = 0
        while idx < stor12:
            require idx < 5
            mem[0] = address(stor[idx])
            idx = idx + 1
            s = (5 * balances[address(stor[idx])]) + s
            continue 
        if eth.balance(this.address) - (5 * uint256(stor[_13]) * stor12) < 5 * msg.value:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            balances[mem[0]] = msg.value
            require stor12 < 5
            uint256(stor12) = msg.sender or Mask(96, 160, uint256(stor12))
            stor12++
        return 0
    else:
        return 0
}



}
