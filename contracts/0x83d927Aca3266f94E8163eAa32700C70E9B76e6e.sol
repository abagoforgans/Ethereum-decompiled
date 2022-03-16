contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[4085 len 32]
    return code.data[99 len 3986]
}



// =====================  Runtime code  =====================


address stor0;
uint256 delay;
mapping of uint256 balances;
mapping of address cancellations;

function balances(address arg1) payable {
    return balances[arg1]
}

function cancellations(address arg1) payable {
    return address(cancellations[arg1])
}

function delay() payable {
    return delay
}

function sub_e2f15b95(?) payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function store(address arg1) payable {
    balances[address(arg1)] += msg.value
    return 1
}

function _fallback() payable {
    if address(cancellations[address(msg.sender)]):
        balances[address(stor3[address(msg.sender)])] += msg.value
        address(cancellations[address(msg.sender)]) = 0
}

function transfer(address arg1, uint256 arg2) payable {
    if balances[address(msg.sender)] < arg2:
        return 0
    create contract with 0 wei
                    code: code.data[1358 len 2628], address(this.address), address(arg1), block.timestamp + delay
    uint256(cancellations[address(create.new_address)]) = msg.sender or Mask(96, 160, uint256(cancellations[address(create.new_address)]))
    balances[address(msg.sender)] -= arg2
    call address(create.new_address) with:
       value arg2 wei
         gas 0 wei
    return address(create.new_address)
}



}
