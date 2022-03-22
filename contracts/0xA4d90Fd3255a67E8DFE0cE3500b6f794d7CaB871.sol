contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0
    stor2 = 0
    return code.data[44 len 1115]
}



// =====================  Runtime code  =====================


address owner;
uint256 sub_a5525736;
uint256 numMiners;
mapping of address lookup;
mapping of uint256 miners;

function lookup(uint256 arg1) payable {
    return address(lookup[arg1])
}

function numMiners() payable {
    return numMiners
}

function miners(address arg1) payable {
    return miners[arg1]
}

function owner() payable {
    return owner
}

function sub_a5525736(?) payable {
    return sub_a5525736
}

function kill() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_c2937ab5(?) payable {
    if owner == msg.sender:
        miners[address(arg1)] += arg2
        if stor[code.data[1083 len 32]] == arg1:
            sub_a5525736 += arg2
        else:
            miners[stor[code.data[1083 len 32]]] -= arg2
}

function sub_e952dd05(?) payable {
    if owner == msg.sender:
        if miners[address(arg1)] - arg2 >= 0:
            miners[address(arg1)] -= arg2
        if arg1 == stor[code.data[1083 len 32]]:
            sub_a5525736 -= arg2
        else:
            miners[stor[code.data[1083 len 32]]] += arg2
}

function sub_1b4fd32f(?) payable {
    if owner == msg.sender:
        uint256(lookup[stor2]) = arg1 or Mask(96, 160, uint256(lookup[stor2]))
        miners[address(arg1)] = arg2
        numMiners++
        if stor[code.data[1083 len 32]] != address(arg1):
            miners[stor[code.data[1083 len 32]]] -= arg2
        if address(arg1) == stor[code.data[1083 len 32]]:
            sub_a5525736 += arg2
}

function sub_6f7b5589(?) payable {
    if owner == msg.sender:
        idx = numMiners
        while idx > 0:
            mem[0] = address(lookup[idx])
            mem[32] = 4
            call address(lookup[idx]) with:
               value eth.balance(this.address) * miners[address(stor3[idx])] / sub_a5525736 wei
                 gas 0 wei
            idx = idx - 1
            continue 
        call stor[code.data[1083 len 32]] with:
           value eth.balance(this.address) wei
             gas 0 wei
}



}
