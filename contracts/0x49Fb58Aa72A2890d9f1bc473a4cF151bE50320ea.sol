contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 396]




// =====================  Runtime code  =====================


mapping of uint256 balance;

function getBalance() payable {
    return balance[address(msg.sender)]
}

function getUserBalance(address arg1) payable {
    return balance[address(arg1)]
}

function _fallback() payable {
    balance[address(msg.sender)] += msg.value
}

function transfer(address arg1, uint256 arg2) payable {
    if balance[address(msg.sender)] >= arg2:
        balance[arg1] += arg2
        balance[address(msg.sender)] -= arg2
}

function withdrawTo(address arg1, uint256 arg2) payable {
    if arg2 <= balance[address(msg.sender)]:
        balance[address(msg.sender)] -= arg2
        call arg1 with:
           value arg2 wei
             gas 0 wei
        if not ext_call.success:
            balance[address(msg.sender)] += arg2
}



}
