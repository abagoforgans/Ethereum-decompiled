contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 1834]




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint256 balances;
array of address stor2;
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

function get_user(address arg1) payable {
    return balances[address(arg1)]
}

function _fallback() payable {
  stop
}

function invest() payable {
    if investors[address(msg.sender)]:
        investors[address(msg.sender)] += msg.value
    else:
        require stor5 < stor2.length
        uint256(stor2[stor5]) = msg.sender or Mask(96, 160, uint256(stor2[stor5]))
        stor5++
        investors[2] += msg.value
}

function __callback(address arg1, uint256 arg2) payable {
    if msg.sender == 0x3c94923400ccc528e8ab0f849edafca06fe332e5:
        if arg2 <= 0:
            uint256(stor[sha3(mem[0 len 64])]) = 0
        else:
            call arg1 with:
               value 5 * balances[address(arg1)] wei
                 gas 0 wei
            balances[address(arg1)] = 0
        idx = 0
        while idx < stor4:
            require idx < stor0
            mem[0] = 0
            if address(stor[code.data[1802 len 32] + idx]) == arg1:
                require idx < stor0
                mem[0] = 0
                address(stor[code.data[1802 len 32] + idx]) = 0
            idx = idx + 1
            continue 
}

function sub_89ac5d13(?) payable {
    if balances[address(msg.sender)] <= 0:
        idx = 0
        s = 0
        while idx < stor4:
            require idx < stor0
            mem[0] = address(stor[code.data[1802 len 32] + idx])
            idx = idx + 1
            s = (5 * balances[address(stor[code.data[1802 len 32] + idx])]) + s
            continue 
        if eth.balance(this.address) - (5 * uint256(stor[_26]) * stor4) < 5 * msg.value:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            call 0x3c94923400ccc528e8ab0f849edafca06fe332e5.0xb4aa6cc1 with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(arg2 + (3 * 3600)), arg2 + (3 * 3600), 1, 160, msg.sender, arg1.length, call.data[arg1 + 36 len 32 * arg1.length]
            require ext_call.success
            balances[address(msg.sender)] = msg.value
            require stor4 < stor0
            uint256(stor[code.data[1802 len 32] + stor4]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1802 len 32] + stor4]))
            stor4++
        return 0
    else:
        return 0
}

function sub_444bdb1b(?) payable {
    idx = 0
    s = 0
    while idx < stor4:
        require idx < stor0
        mem[0] = address(stor[code.data[1802 len 32] + idx])
        mem[32] = 1
        idx = idx + 1
        s = (5 * balances[address(stor[code.data[1802 len 32] + idx])]) + s
        continue 
    s = 0
    idx = 0
    while idx < stor5:
        require idx < stor2.length
        mem[0] = address(stor2[idx])
        mem[32] = 3
        s = s + investors[address(stor2[idx])]
        idx = idx + 1
        continue 
    return (100 * s * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 / eth.balance(this.address) - (5 * uint256(stor[_9]) * stor4))
}

function sub_187c5903(?) payable {
    mem[0] = msg.sender
    mem[32] = 3
    if investors[address(msg.sender)] != 0:
        idx = 0
        s = 0
        while idx < stor4:
            require idx < stor0
            mem[0] = address(stor[code.data[1802 len 32] + idx])
            mem[32] = 1
            idx = idx + 1
            s = (5 * balances[address(stor[code.data[1802 len 32] + idx])]) + s
            continue 
        if 5 * uint256(stor[_10]) * stor4 <= eth.balance(this.address):
            s = 0
            idx = 0
            while idx < stor5:
                require idx < stor2.length
                mem[0] = address(stor2[idx])
                mem[32] = 3
                s = s + investors[address(stor2[idx])]
                idx = idx + 1
                continue 
            call msg.sender with:
               value (eth.balance(this.address) * uint256(stor[sha3(mem[0 len 64])]) / s * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5) - (5 * uint256(stor[_10]) * stor4 * uint256(stor[sha3(mem[0 len 64])]) / s * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5 * stor5) wei
                 gas 0 wei
            investors[address(msg.sender)] = 0
}



}
