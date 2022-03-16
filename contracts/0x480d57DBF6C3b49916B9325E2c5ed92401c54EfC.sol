contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[3285 len 32]
    return code.data[56 len 3229]
}



// =====================  Runtime code  =====================


uint256 delay;
mapping of uint256 balances;

function balances(address arg1) payable {
    return balances[arg1]
}

function delay() payable {
    return delay
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
                    code: code.data[601 len 2628], msg.sender, address(arg1), block.timestamp + delay
    balances[address(msg.sender)] -= arg2
    return address(create.new_address)
}



}
