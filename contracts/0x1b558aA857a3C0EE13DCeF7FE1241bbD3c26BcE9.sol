contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    if code.data[222 len 32] != 0:
        stor0[address(msg.sender)] = code.data[222 len 32]
    else:
        stor0[address(msg.sender)] = 10000
    return code.data[74 len 148]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const getAddress = address(this.address)


mapping of uint256 coinBalanceOf;

function coinBalanceOf(address arg1) payable {
    return coinBalanceOf[arg1]
}

function _fallback() payable {
  stop
}



}
