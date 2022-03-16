contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 1506]




// =====================  Runtime code  =====================


mapping of uint256 balances;
array of address stor6;
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

function get_user(address arg1) payable {
    return balances[address(arg1)]
}

function _fallback() payable {
  stop
}

function invest() payable {
    if not investors[address(msg.sender)]:
        require stor13 < 5
        uint256(stor6[stor13]) = msg.sender or Mask(96, 160, uint256(stor6[stor13]))
        stor13++
    investors[address(msg.sender)] += msg.value
}

function __callback(address arg1, uint256 arg2) payable {
    if arg2 <= 0:
        uint256(stor[sha3(mem[0 len 64])]) = 0
    else:
        call arg1 with:
           value 5 * balances[address(arg1)] wei
             gas 0 wei
        balances[address(arg1)] = 0
    idx = 0
    while idx < stor12:
        require idx < 5
        if arg1 == address(stor[idx]):
            require idx < 5
            address(stor[idx]) = 0
        idx = idx + 1
        continue 
}

function sub_444bdb1b(?) payable {
    idx = 0
    s = 0
    while idx < stor12:
        require idx < 5
        mem[0] = address(stor[idx])
        mem[32] = 5
        idx = idx + 1
        s = (5 * balances[address(stor[idx])]) + s
        continue 
    s = 0
    idx = 0
    while idx < stor13:
        require idx < 5
        mem[0] = address(stor6[idx])
        mem[32] = 11
        _11 = sha3(address(stor6[idx]), 11)
        s = investors[address(stor6[idx])] + s
        idx = idx + 1
        continue 
    return (100 * uint256(stor[_11]) * stor13 / eth.balance(this.address) - (5 * uint256(stor[_5]) * stor12))
}

function sub_89ac5d13(?) payable {
    if balances[address(msg.sender)] <= 0:
        idx = 0
        s = 0
        while idx < stor12:
            require idx < 5
            mem[0] = address(stor[idx])
            idx = idx + 1
            s = (5 * balances[address(stor[idx])]) + s
            continue 
        if eth.balance(this.address) - (5 * uint256(stor[_20]) * stor12) < 5 * msg.value:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            call 0x3c94923400ccc528e8ab0f849edafca06fe332e5.0xb4aa6cc1 with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(arg2 + (3 * 3600)), arg2 + (3 * 3600), 1, 160, msg.sender, arg1.length, call.data[arg1 + 36 len 32 * arg1.length]
            require ext_call.success
            balances[address(msg.sender)] = msg.value
            require stor12 < 5
            uint256(stor12) = msg.sender or Mask(96, 160, uint256(stor12))
            stor12++
        return 0
    else:
        return 0
}

function sub_187c5903(?) payable {
    mem[0] = msg.sender
    mem[32] = 11
    if investors[address(msg.sender)] != 0:
        idx = 0
        s = 0
        while idx < stor12:
            require idx < 5
            mem[0] = address(stor[idx])
            mem[32] = 5
            idx = idx + 1
            s = (5 * balances[address(stor[idx])]) + s
            continue 
        if 5 * uint256(stor[_6]) * stor12 <= eth.balance(this.address):
            s = 0
            idx = 0
            while idx < stor13:
                require idx < 5
                mem[0] = address(stor6[idx])
                mem[32] = 11
                _12 = sha3(address(stor6[idx]), 11)
                s = investors[address(stor6[idx])] + s
                idx = idx + 1
                continue 
            call msg.sender with:
               value (eth.balance(this.address) * uint256(stor[sha3(mem[0 len 64])]) / uint256(stor[_12]) * stor13) - (5 * uint256(stor[_6]) * stor12 * uint256(stor[sha3(mem[0 len 64])]) / uint256(stor[_12]) * stor13) wei
                 gas 0 wei
            investors[address(msg.sender)] = 0
}



}
