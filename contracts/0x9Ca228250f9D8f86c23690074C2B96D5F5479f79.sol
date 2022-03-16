contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[3551 len 32]
    return code.data[99 len 3452]
}



// =====================  Runtime code  =====================


address stor0;
uint256 delay;
mapping of uint256 balances;

function balances(address arg1) payable {
    return balances[arg1]
}

function delay() payable {
    return delay
}

function sub_e2f15b95(?) payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function store(address arg1) payable {
    balances[address(arg1)] += msg.value
}

function transfer(address arg1, uint256 arg2) payable {
    if balances[address(msg.sender)] < arg2:
        return 0
    create contract with 0 wei
                    code: code.data[824 len 2628], msg.sender, address(arg1), block.timestamp + delay
    balances[address(msg.sender)] -= arg2
    call address(create.new_address) with:
       value arg2 wei
         gas 0 wei
    return address(create.new_address)
}



}
