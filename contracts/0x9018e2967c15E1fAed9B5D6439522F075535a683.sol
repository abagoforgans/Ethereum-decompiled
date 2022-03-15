contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[64 len 3198]
}



// =====================  Runtime code  =====================


mapping of uint8 coinBalanceOf;
mapping of address stor1;
address stor2;
uint256 stor2;

function coinBalanceOf(address arg1) payable {
    return uint256(coinBalanceOf[address(arg1)])
}

function coinBalance() payable {
    return uint256(coinBalanceOf[address(msg.sender)])
}

function _fallback() payable {
  stop
}

function sub_a9eef400(?) payable {
    return 0
}

function sub_2386e0dc(?) payable {
    if not address(stor1[arg1]):
        return 0
    return 1
}

function approve(address arg1) payable {
    uint8(coinBalanceOf[address(msg.sender)][1][address(arg1)]) = 1
}

function approveOnce(address arg1, uint256 arg2) payable {
    uint256(coinBalanceOf[address(msg.sender)][2][address(arg1)]) = arg2
}

function transferOwner(address arg1) payable {
    if msg.sender == address(stor2):
        uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function ownerWithdraw() payable {
    if msg.sender == address(stor2):
        call address(stor2) with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function sub_5abae450(?) payable {
    if not uint8(coinBalanceOf[address(arg1)][1][address(arg2)]):
        return uint256(coinBalanceOf[address(arg1)][2][address(arg2)])
    return uint256(coinBalanceOf[address(arg1)])
}

function isApproved(address arg1) payable {
    if not uint8(coinBalanceOf[address(msg.sender)][1][address(arg1)]):
        if uint256(coinBalanceOf[address(msg.sender)][2][address(arg1)]) <= 0:
            return 0
    return 1
}

function isApprovedFor(address arg1, address arg2) payable {
    if not uint8(coinBalanceOf[address(arg1)][1][address(arg2)]):
        if uint256(coinBalanceOf[address(arg1)][2][address(arg2)]) <= 0:
            return 0
    return 1
}

function withdraw(uint256 arg1, bytes32 arg2) payable {
    if uint256(coinBalanceOf[address(msg.sender)]) >= arg1:
        if arg1 > 0:
            uint256(coinBalanceOf[address(msg.sender)]) -= arg1
            emit Withdraw(arg1, msg.sender, arg2);
}

function deposit(address arg1, uint256 arg2, bytes32 arg3) payable {
    if msg.sender == address(stor2):
        if not address(stor1[arg3]):
            uint256(coinBalanceOf[address(arg1)]) += arg2
            uint256(stor1[arg3]) = arg1 or Mask(96, 160, uint256(stor1[arg3]))
            emit Deposit(arg2, arg1);
}

function sendCoin(uint256 arg1, address arg2) payable {
    if uint256(coinBalanceOf[address(msg.sender)]) >= arg1:
        uint256(coinBalanceOf[address(msg.sender)]) -= arg1
        uint256(coinBalanceOf[address(arg2)]) += arg1
        emit CoinTransfer(arg1, msg.sender, arg2);
        return 0
    else:
        return 0
}

function sendCoinFrom(address arg1, uint256 arg2, address arg3) payable {
    if uint256(coinBalanceOf[address(arg1)]) >= arg2:
        if uint8(coinBalanceOf[address(arg1)][1][address(msg.sender)]):
            uint256(coinBalanceOf[address(arg1)]) -= arg2
            uint256(coinBalanceOf[address(arg3)]) += arg2
            emit CoinTransfer(arg2, arg1, arg3);
        else:
            if uint256(coinBalanceOf[address(arg1)][2][address(msg.sender)]) >= arg2:
                uint256(coinBalanceOf[address(arg1)][2][address(msg.sender)]) = 0
                uint256(coinBalanceOf[address(arg1)]) -= arg2
                uint256(coinBalanceOf[address(arg3)]) += arg2
                emit CoinTransfer(arg2, arg1, arg3);
        return 0
    else:
        return 0
}



}
