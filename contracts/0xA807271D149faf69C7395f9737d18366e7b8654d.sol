contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[865 len 32]
    stor2[address(msg.sender)] = code.data[865 len 32]
    return code.data[101 len 764]
}



// =====================  Runtime code  =====================


address minterAddress;
uint256 sub_32454dbb;
mapping of uint256 queryBalance;

function minter() {
    return minterAddress
}

function sub_32454dbb(?) {
    return sub_32454dbb
}

function queryBalance(address arg1) {
    return queryBalance[address(arg1)]
}

function killCoin() {
    require minterAddress == msg.sender
    selfdestruct(minterAddress)
}

function _fallback() payable {
    revert
}

function mint(address arg1, uint256 arg2) {
    if minterAddress == msg.sender:
        queryBalance[address(arg1)] += arg2
        sub_32454dbb += arg2
        emit LogCoinsMinted(address(arg1), arg2);
}

function send(address arg1, uint256 arg2) {
    if queryBalance[address(msg.sender)] >= arg2:
        queryBalance[address(msg.sender)] -= arg2
        queryBalance[arg1] += arg2
        emit LogCoinsSent(address(arg1), arg2);
}



}
