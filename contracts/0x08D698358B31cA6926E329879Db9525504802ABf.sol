contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 821]
}



// =====================  Runtime code  =====================


mapping of uint256 tokenBalanceOf;
address stor1;

function tokenBalanceOf(address arg1) payable {
    return tokenBalanceOf[arg1]
}

function terminate() payable {
    require msg.value <= 0
    require msg.sender == stor1
    emit notifyTerminate(eth.balance(this.address));
    selfdestruct(stor1)
}

function withdrawEtherOrThrow(uint256 arg1) payable {
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}

function _fallback() payable {
    require 0 == msg.value % 10^15
    tokenBalanceOf[address(msg.sender)] += msg.value / 10^15
    emit notifySellToken(msg.value, msg.sender);
}

function transfer(address arg1, uint256 arg2) payable {
    require msg.value <= 0
    require tokenBalanceOf[address(msg.sender)] >= arg2
    require arg2 + tokenBalanceOf[address(arg1)] >= tokenBalanceOf[address(arg1)]
    tokenBalanceOf[address(msg.sender)] -= arg2
    tokenBalanceOf[arg1] += arg2
    emit notifyTranferToken(arg2, msg.sender, arg1);
}

function refund() payable {
    require msg.value <= 0
    require tokenBalanceOf[address(msg.sender)]
    tokenBalanceOf[address(msg.sender)] = 0
    call msg.sender with:
       value 10^15 * tokenBalanceOf[address(msg.sender)] wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    emit notifyRefundToken(tokenBalanceOf[address(msg.sender)], msg.sender);
}



}
