contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[address(msg.sender)] = 10^11
    return code.data[77 len 853]
}



// =====================  Runtime code  =====================


mapping of uint256 balance;

function balance(address arg1) payable {
    return balance[address(arg1)]
}

function _fallback() payable {
  stop
}

function distribute(address arg1, uint256 arg2) payable {
    if balance[address(msg.sender)] >= arg2:
        balance[address(arg1)] += arg2
        balance[address(msg.sender)] -= arg2
        emit 0x2eb00525: msg.sender, address(arg1), arg2
}

function transfer(address arg1, address arg2, uint256 arg3) payable {
    if balance[address(arg1)] >= arg3:
        balance[address(arg2)] += arg3
        balance[address(arg1)] -= arg3
        emit 0x2eb00525: address(arg1), address(arg2), arg3
}



}
