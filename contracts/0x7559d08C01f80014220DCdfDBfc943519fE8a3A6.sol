contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 2218]




// =====================  Runtime code  =====================


#
#  - sub_1323af40(?)
#
mapping of uint256 balances;
array of address sub_1bccca14;
mapping of uint256 investors;
uint256 sub_29f8df0d;
uint256 sub_6e723e24;

function sub_1bccca14(?) payable {
    require arg1 < 5
    return address(sub_1bccca14[arg1])
}

function balances(address arg1) payable {
    return balances[arg1]
}

function sub_29f8df0d(?) payable {
    return sub_29f8df0d
}

function get() payable {
    return balances[address(msg.sender)]
}

function sub_6e723e24(?) payable {
    return sub_6e723e24
}

function investors(address arg1) payable {
    return investors[arg1]
}

function get_user(address arg1) payable {
    return balances[address(arg1)]
}

function sub_a32da9d1(?) payable {
    require arg1 < 5
    return address(stor[arg1])
}

function _fallback() payable {
  stop
}

function invest() payable {
    if not investors[address(msg.sender)]:
        require sub_6e723e24 < 5
        uint256(sub_1bccca14[stor13]) = msg.sender or Mask(96, 160, uint256(sub_1bccca14[stor13]))
        sub_6e723e24++
    investors[address(msg.sender)] += msg.value
}

function __callback(address arg1, uint256 arg2) payable {
    balances[address(arg1)] = 0
    if arg2 > 0:
        call arg1 with:
           value 5 * balances[address(arg1)] wei
             gas 0 wei
    idx = 0
    while idx < sub_29f8df0d:
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
    while idx < sub_29f8df0d:
        require idx < 5
        mem[0] = address(stor[idx])
        mem[32] = 5
        idx = idx + 1
        s = (5 * balances[address(stor[idx])]) + s
        continue 
    s = 0
    idx = 0
    while idx < sub_6e723e24:
        require idx < 5
        mem[0] = address(sub_1bccca14[idx])
        mem[32] = 11
        _11 = sha3(address(sub_1bccca14[idx]), 11)
        s = investors[address(stor6[idx])] + s
        idx = idx + 1
        continue 
    return (100 * uint256(stor[_11]) * sub_6e723e24 / eth.balance(this.address) - (5 * uint256(stor[_5]) * sub_29f8df0d))
}

function sub_187c5903(?) payable {
    mem[0] = msg.sender
    mem[32] = 11
    if investors[address(msg.sender)] != 0:
        idx = 0
        s = 0
        while idx < sub_29f8df0d:
            require idx < 5
            mem[0] = address(stor[idx])
            mem[32] = 5
            idx = idx + 1
            s = s + (5 * balances[address(stor[idx])])
            continue 
        if s * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d <= eth.balance(this.address):
            t = 0
            idx = 0
            while idx < sub_6e723e24:
                require idx < 5
                mem[0] = address(sub_1bccca14[idx])
                mem[32] = 11
                t = t + investors[address(stor6[idx])]
                idx = idx + 1
                continue 
            call msg.sender with:
               value (eth.balance(this.address) * uint256(stor[sha3(mem[0 len 64])]) / t * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24) - (s * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * uint256(stor[sha3(mem[0 len 64])]) / t * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24) wei
                 gas 0 wei
            investors[address(msg.sender)] = 0
            idx = 0
            while idx < sub_6e723e24:
                require idx < 5
                if address(sub_1bccca14[idx]) == msg.sender:
                    require idx < 5
                    address(sub_1bccca14[idx]) = 0
                idx = idx + 1
                continue 
}



}
