contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[4409 len 32]
    return code.data[99 len 4310]
}



// =====================  Runtime code  =====================


address stor0;
uint256 delay;
mapping of uint256 balances;
mapping of address cancellations;
array of address transfers;

function balances(address arg1) payable {
    return balances[arg1]
}

function cancellations(address arg1) payable {
    return address(cancellations[arg1])
}

function transfers(address arg1, uint256 arg2) payable {
    require arg2 < uint256(transfers[arg1])
    return address(transfers[arg1][arg2])
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
                    code: code.data[1682 len 2628], address(this.address), address(arg1), block.timestamp + delay
    uint256(transfers[address(msg.sender)])++
    if not uint256(transfers[address(msg.sender)]) <= uint256(transfers[address(msg.sender)]) + 1:
        idx = uint256(transfers[address(msg.sender)]) + 1
        while uint256(transfers[address(msg.sender)]) > idx:
            uint256(transfers[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    require uint256(transfers[address(msg.sender)]) < uint256(transfers[address(msg.sender)])
    uint256(transfers[address(msg.sender)][uint256(transfers[address(msg.sender)])]) = create.new_address or Mask(96, 160, uint256(transfers[address(msg.sender)][uint256(transfers[address(msg.sender)])]))
    uint256(cancellations[address(create.new_address)]) = msg.sender or Mask(96, 160, uint256(cancellations[address(create.new_address)]))
    balances[address(msg.sender)] -= arg2
    call address(create.new_address) with:
       value arg2 wei
         gas 0 wei
    return address(create.new_address)
}



}
