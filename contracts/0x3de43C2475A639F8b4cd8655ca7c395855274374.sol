contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = block.number
    return code.data[23 len 1205]
}



// =====================  Runtime code  =====================


uint256 lastBlock;
uint256 stor1;
array of address stor2;
array of uint256 secrets;
mapping of uint256 sub_6ac2da19;
mapping of uint256 balances;

function balances(address arg1) payable {
    return balances[arg1]
}

function tickets(uint256 arg1) payable {
    require arg1 < stor2.length
    return address(stor[code.data[1173 len 32] + arg1])
}

function sub_6ac2da19(?) payable {
    return sub_6ac2da19[arg1]
}

function lastBlock() payable {
    return lastBlock
}

function secrets(uint256 arg1) payable {
    require arg1 < secrets.length
    return secrets[arg1]
}

function die() payable {
    if 0xfd2605a2bf58fdbb90db1da55df61628b47f9e8c != msg.sender:
    selfdestruct(0xfd2605a2bf58fdbb90db1da55df61628b47f9e8c)
}

function _fallback() payable {
  stop
}

function sub_2168129d(?) payable {
    return sha3(arg1)
}

function payoutReady() payable {
    if block.number % 88 <= 68:
        return (block.number % 88 > 68)
    return (block.number - lastBlock > 68)
}

function sub_7c1c1716(?) payable {
    if block.number % 88 >= 68:
    if block.number % 88 <= 48:
    require sha3(arg1) != sub_6ac2da19[address(msg.sender)]
}

function buyTicket(uint256 arg1) payable {
    if block.number % 88 < 40:
        sub_6ac2da19[address(msg.sender)] = arg1
        balances[address(msg.sender)] += msg.value
        stor1 += msg.value
}

function random() payable {
    idx = 0
    s = 0
    while idx < secrets.length:
        mem[0] = 3
        idx = idx + 1
        s = s xor secrets[idx]
        continue 
    return uint16(s * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length % stor2.length)
}

function payout() payable {
    if block.number % 88 <= 68:
        return 0
    if block.number - lastBlock <= 68:
        return 0
    idx = 0
    s = 0
    while idx < secrets.length:
        mem[0] = 3
        idx = idx + 1
        s = s xor secrets[idx]
        continue 
    require uint16(s * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length * secrets.length % stor2.length) < stor2.length
    call stor2[uint16(s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length % stor2.length)] with:
       value stor1 - (25000 * block.gasprice) wei
         gas 0 wei
    lastBlock = block.number
    stor2.length = 0
    idx = code.data[1173 len 32]
    while code.data[1173 len 32] + stor2.length > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    secrets.length = 0
    idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    while secrets.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    stor1 = 0
    idx = 0
    while idx < stor2.length:
        sub_6ac2da19[address(stor[code.data[1173 len 32] + idx])] = 0
        mem[0] = address(stor[code.data[1173 len 32] + idx])
        mem[32] = 5
        balances[address(stor[code.data[1173 len 32] + idx])] = 0
        idx = idx + 1
        continue 
    return stor2[uint16(s * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length * stor3.length % stor2.length)]
}



}
