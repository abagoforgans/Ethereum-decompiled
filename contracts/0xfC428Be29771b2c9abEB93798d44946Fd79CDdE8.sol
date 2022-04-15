contract main {


// =======================  Init code  ======================


uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    stor2 = code.data[1032 len 20]
    stor3 = code.data[1052 len 32]
    stor4 = code.data[1084 len 32]
    return code.data[105 len 915]
}



// =====================  Runtime code  =====================


const sub_35930e6e(?) = 5 * 10^18

const sub_f5c8ba2e(?) = 10^18


mapping of uint256 balances;
uint256 stor1;
address projectWalletAddress;
uint256 startBlock;
uint256 endBlock;

function endBlock() {
    return endBlock
}

function balances(address arg1) {
    return balances[arg1]
}

function startBlock() {
    return startBlock
}

function projectWallet() {
    return projectWalletAddress
}

function _fallback() payable {
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require stor1 < 5 * 10^18
    balances[address(msg.sender)] += msg.value
    stor1 += msg.value
}

function transferToProjectWallet() {
    require stor1 >= 10^18
    require eth.balance(this.address)
    call projectWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refund() {
    require block.number <= endBlock
    require stor1 >= 10^18
    require balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
