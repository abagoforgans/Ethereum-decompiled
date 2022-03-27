contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 1507]




// =====================  Runtime code  =====================


mapping of uint256 userBalances;

function userBalances(address arg1) {
    return userBalances[arg1]
}

function getBalance(address arg1) {
    return userBalances[address(arg1)]
}

function _fallback() payable {
    revert 
}

function deposit() payable {
    emit Deposit(msg.sender, msg.value);
    userBalances[address(msg.sender)] += msg.value
}

function sub_ccd6e5b6(?) payable {
    if arg1 > userBalances[address(msg.sender)]:
        emit Transfer(Array(len=30, data='Amount greater than balance...'), address(msg.sender), address(arg2), arg1);
    else:
        call arg2 with:
           value arg1 wei
             gas gas_remaining - 34050 wei
        if not ext_call.success:
            emit Transfer(Array(len=24, data='Call.value went wrong...'), address(msg.sender), address(arg2), arg1);
        else:
            userBalances[address(msg.sender)] -= arg1
            emit Transfer(Array(len=17, data='Payment executed.'), address(msg.sender), address(arg2), arg1);
}



}
