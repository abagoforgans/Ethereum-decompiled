contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    call 0x084f6a99003dae6d3906664fdbf43dd09930d0e3.register(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'GavCoin'
    require ext_call.success
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor0[address(msg.sender)] = 10^6
    stor3 = block.number
    return code.data[200 len 904]
}



// =====================  Runtime code  =====================


const nameRegAddress = 0x84f6a99003dae6d3906664fdbf43dd09930d0e3


mapping of uint256 coinBalanceOf;
mapping of uint8 isApprovedFor;
address stor2;
uint256 stor2;
uint256 stor3;

function isApprovedFor(address arg1, address arg2) payable {
    return isApprovedFor[address(arg1)][address(arg2)]
}

function isApproved(address arg1) payable {
    return isApprovedFor[address(msg.sender)][address(arg1)]
}

function coinBalanceOf(address arg1) payable {
    return coinBalanceOf[address(arg1)]
}

function coinBalance() payable {
    return coinBalanceOf[address(msg.sender)]
}

function _fallback() payable {
  stop
}

function approve(address arg1) payable {
    isApprovedFor[address(msg.sender)][address(arg1)] = 1
}

function changeOwner(address arg1) payable {
    if msg.sender == address(stor2):
        uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function sendCoin(uint256 arg1, address arg2) payable {
    if coinBalanceOf[address(msg.sender)] >= arg1:
        coinBalanceOf[address(msg.sender)] -= arg1
        coinBalanceOf[arg2] += arg1
}

function named(bytes32 arg1) payable {
    call 0x084f6a99003dae6d3906664fdbf43dd09930d0e3.addressOf(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sendCoinFrom(address arg1, uint256 arg2, address arg3) payable {
    if coinBalanceOf[address(arg1)] >= arg2:
        if isApprovedFor[address(arg1)][address(msg.sender)]:
            coinBalanceOf[address(arg1)] -= arg2
            coinBalanceOf[arg3] += arg2
}

function mine() payable {
    if block.number - stor3 > 0:
        coinBalanceOf[address(msg.sender)] = (1000 * block.number) - (1000 * stor3) + coinBalanceOf[address(msg.sender)]
        coinBalanceOf[block.coinbase] = coinBalanceOf[block.coinbase] + (1000 * block.number) - (1000 * stor3)
        stor3 = block.number
}



}
