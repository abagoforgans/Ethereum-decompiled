contract main {


// =======================  Init code  ======================


array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;

function _fallback() payable {
    mem[96 len -2128] = code.data[2515 len -2128]
    mem[64] = -2032
    stor2.length = (2 * mem[mem[96] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor4 = mem[128]
    return code.data[387 len 2128]
}



// =====================  Runtime code  =====================


array of struct stor0;
mapping of uint256 stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
array of address stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702949;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
  stop
}

function invest() payable {
    balanceOf[address(this.address)] -= msg.value / 10^18
    balanceOf[msg.sender] += msg.value / 10^18
    emit Transfer((msg.value / 10^18), this.address, msg.sender);
}

function sub_eff25cd6(?) payable {
    require arg1 < stor0.length
    mem[224] = uint256(stor0[arg1].field_0)
    idx = 224
    s = 0
    while stor0[arg1].length + 224 > idx + 32:
        mem[idx + 32] = uint256(stor0[(3 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[224 len stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32)]), 
           stor290D[arg1],
           stor290D[arg1]
}

function returnFunds(uint256 arg1) payable {
    if balanceOf[address(msg.sender)] >= arg1:
        balanceOf[address(msg.sender)] -= arg1
        balanceOf[this.address] += arg1
        emit Transfer(arg1, msg.sender, this.address);
        call msg.sender with:
           value 10^18 * arg1 wei
             gas 0 wei
    else:
        balanceOf[address(msg.sender)] = 0
        balanceOf[this.address] += balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, this.address);
        call msg.sender with:
           value 10^18 * balanceOf[address(msg.sender)] wei
             gas 0 wei
}

function payOut(uint256 arg1, string arg2) payable {
    if balanceOf[address(msg.sender)] >= arg1:
        balanceOf[address(msg.sender)] -= arg1
        balanceOf[this.address] += arg1
        emit Transfer(arg1, msg.sender, this.address);
        require stor1[arg2[all]] < stor0.length
        call stor290D[stor1[arg2[all]]] with:
           value 10^18 * arg1 wei
             gas 0 wei
        require stor1[arg2[all]] < stor0.length
        stor290D[stor1[arg2[all]]] += arg1
    else:
        balanceOf[address(msg.sender)] = 0
        balanceOf[this.address] += balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, this.address);
        require stor1[arg2[all]] < stor0.length
        call stor290D[stor1[arg2[all]]] with:
           value 10^18 * balanceOf[address(msg.sender)] wei
             gas 0 wei
        require stor1[arg2[all]] < stor0.length
        stor290D[stor1[arg2[all]]] += balanceOf[address(msg.sender)]
}

function addDeveloper(address arg1, string arg2) payable {
    require 0 == stor1[arg2[all]]
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        mem[0] = 0
        idx = (3 * stor0.length) + 3
        while sha3(0) + (3 * stor0.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 1
            continue 
    uint256(stor0[stor0.length][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(stor0[stor0.length].field_256) = arg1 or Mask(96, 160, uint256(stor0[stor0.length].field_256))
    uint256(stor0[stor0.length].field_512) = 0
    stor1[arg2[all]] = stor0.length
}



}
