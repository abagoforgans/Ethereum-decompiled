contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
array of uint256 stor1;

function _fallback() payable {
    stor0[address(msg.sender)] = 1
    stor1.length = 1
    if not stor1.length <= 1:
        idx = 1
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    require 0 < stor1.length
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[182 len 483]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of address people;

function people(uint256 arg1) payable {
    require arg1 < people.length
    return address(people[arg1])
}

function _fallback() payable {
  stop
}

function claim() payable {
    idx = 0
    while idx < people.length:
        mem[0] = 1
        call address(people[idx]) with:
           value eth.balance(this.address) / people.length wei
             gas 0 wei
        idx = idx + 1
        continue 
}

function add(address arg1) payable {
    if stor0[address(msg.sender)]:
        if not stor0[arg1]:
            stor0[arg1] = 1
            people.length++
            if not people.length <= people.length + 1:
                idx = people.length + 1
                while people.length > idx:
                    uint256(people[idx]) = 0
                    idx = idx + 1
                    continue 
            require people.length < people.length
            uint256(people[people.length]) = arg1 or Mask(96, 160, uint256(people[people.length]))
}



}
