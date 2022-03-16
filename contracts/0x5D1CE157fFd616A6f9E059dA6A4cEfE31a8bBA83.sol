contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 429]




// =====================  Runtime code  =====================


mapping of uint256 coinBalanceOf;
mapping of uint256 sub_62b62e59;
uint256 stor2;

function sub_62b62e59(?) payable {
    return sub_62b62e59[arg1]
}

function coinBalanceOf(address arg1) payable {
    return coinBalanceOf[arg1]
}

function sendCoin(address arg1, uint256 arg2) payable {
    if block.timestamp - sub_62b62e59[address(arg1)] < 3600:
        return 0
    if coinBalanceOf[address(msg.sender)] < 10 * arg2:
        return 0
    if arg2 / 5 >= 1:
        coinBalanceOf[address(arg1)] = (arg2 / 5) + arg2 + coinBalanceOf[address(arg1)]
        coinBalanceOf[msg.sender] -= arg2
        sub_62b62e59[address(arg1)] = block.timestamp
        stor2 += arg2 / 5
    else:
        coinBalanceOf[address(arg1)] = arg2 + coinBalanceOf[address(arg1)] + 1
        coinBalanceOf[msg.sender] -= arg2
        sub_62b62e59[address(arg1)] = block.timestamp
        stor2++
    emit CoinTransfer(msg.sender, address(arg1), arg2);
    if stor2 <= 9000:
        return 1
    selfdestruct(this.address)
}

function _fallback() payable {
  stop
}

function token() payable {
    stor2 = 0
}



}
