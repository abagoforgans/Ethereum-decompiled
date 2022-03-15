contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
array of uint256 stor1;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778997;

function _fallback() payable {
    if stor0[address(msg.sender)]:
        stor0[address(msg.sender)] = 1
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            idx = stor1.length + 1
            while stor1.length > idx:
                stor1[idx] = 0
                idx = idx + 1
                continue 
        require stor1.length - 1 < stor1.length
        storB10E[stor1.length] = msg.sender or Mask(96, 160, storB10E[stor1.length])
    return code.data[238 len 551]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of address people;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778997;

function people(uint256 arg1) payable {
    require arg1 < people.length
    return address(people[arg1])
}

function _fallback() payable {
  stop
}

function claim() payable {
    if stor0[address(msg.sender)]:
        if eth.balance(this.address) >= 100:
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
        stor0[arg1] = 1
        people.length++
        if not people.length <= people.length + 1:
            idx = people.length + 1
            while people.length > idx:
                uint256(people[idx]) = 0
                idx = idx + 1
                continue 
        require people.length - 1 < people.length
        storB10E[stor1.length] = arg1 or Mask(96, 160, storB10E[stor1.length])
}



}
