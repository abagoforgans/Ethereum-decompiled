contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 1791]




// =====================  Runtime code  =====================


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

function sub_89ac5d13(?) payable {
    emit 0xbe5c2521 
    emit 0x60 
    if balances[address(msg.sender)] <= 0:
        idx = 0
        s = 0
        while idx < sub_29f8df0d:
            require idx < 5
            mem[0] = address(stor[idx])
            idx = idx + 1
            s = (5 * balances[address(stor[idx])]) + s
            continue 
        if eth.balance(this.address) - (5 * uint256(stor[_23]) * sub_29f8df0d) < 5 * msg.value:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            call 0x3c94923400ccc528e8ab0f849edafca06fe332e5.0xb4aa6cc1 with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(arg2 + (3 * 3600)), arg2 + (3 * 3600), 1, 160, msg.sender, arg1.length, call.data[arg1 + 36 len 32 * arg1.length]
            require ext_call.success
            balances[address(msg.sender)] = msg.value
            require sub_29f8df0d < 5
            uint256(stor12) = msg.sender or Mask(96, 160, uint256(stor12))
            sub_29f8df0d++
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
        while idx < sub_29f8df0d:
            require idx < 5
            mem[0] = address(stor[idx])
            mem[32] = 5
            idx = idx + 1
            s = (5 * balances[address(stor[idx])]) + s
            continue 
        if 5 * uint256(stor[_6]) * sub_29f8df0d <= eth.balance(this.address):
            s = 0
            idx = 0
            while idx < sub_6e723e24:
                require idx < 5
                mem[0] = address(sub_1bccca14[idx])
                mem[32] = 11
                _12 = sha3(address(sub_1bccca14[idx]), 11)
                s = investors[address(stor6[idx])] + s
                idx = idx + 1
                continue 
            call msg.sender with:
               value (eth.balance(this.address) * uint256(stor[sha3(mem[0 len 64])]) / uint256(stor[_12]) * sub_6e723e24) - (5 * uint256(stor[_6]) * sub_29f8df0d * uint256(stor[sha3(mem[0 len 64])]) / uint256(stor[_12]) * sub_6e723e24) wei
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
