contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function deposit(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    emit Deposit(address(arg1), address(arg2), arg3, arg4);
}

function transfer(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    emit Transfer(address(arg1), address(arg2), arg3, arg4);
}

function withdraw(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    emit Withdraw(address(arg1), address(arg2), arg3, arg4);
}



}
