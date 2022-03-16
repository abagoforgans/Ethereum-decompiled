contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[3155 len 32]
    return code.data[56 len 3099]
}



// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
  stop
}

function store(address arg1) payable {
    stor1[address(arg1)] += msg.value
}

function transfer(address arg1, uint256 arg2) payable {
    if stor1[address(msg.sender)] < arg2:
        return 0
    create contract with 0 wei
                    code: code.data[471 len 2628], msg.sender, address(arg1), block.timestamp + stor0
    stor1[address(msg.sender)] -= arg2
    return address(create.new_address)
}



}
