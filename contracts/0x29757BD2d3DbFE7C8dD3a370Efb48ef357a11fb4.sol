contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[61 len 905]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
address minterAddress;

function minter() {
    return minterAddress
}

function balances(address arg1) {
    return balances[arg1]
}

function getMyBalance() {
    return balances[address(msg.sender)]
}

function getMinter() {
    return minterAddress
}

function getBalance(address arg1) {
    return balances[address(arg1)]
}

function _fallback() payable {
    revert 
}

function changeMinter(address arg1) {
    if minterAddress != msg.sender:
        return 0
    minterAddress = arg1
    return 1
}

function mint(uint256 arg1) {
    if minterAddress != msg.sender:
        return 0
    balances[stor1] += arg1
    emit Mint(arg1);
    return 1
}

function send(uint256 arg1, address arg2) {
    if balances[address(msg.sender)] < arg1:
        return 0
    balances[address(msg.sender)] -= arg1
    balances[arg2] += arg1
    emit Sent(msg.sender, address(arg2), arg1);
    return 1
}



}
