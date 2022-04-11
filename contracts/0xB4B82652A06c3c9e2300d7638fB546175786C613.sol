contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() {
    stor3 = 0
    stor0 = code.data[1987 len 20]
    stor1 = msg.sender
    stor4 = block.timestamp
    stor5 = (24 * 3600 * code.data[2007 len 32]) + block.timestamp
    stor6 = 0
    return code.data[130 len 1845]
}



// =====================  Runtime code  =====================


const minRequired = 100 * 10^18

const maxLimit = 17000 * 10^18

const WEI_PER_ETHER = 10^18


address ethFundDepositAddress;
address owner;
mapping of uint256 whiteList;
uint8 stor3;
uint256 fundingStart;
uint256 fundingEnd;
uint256 totalSupply;
mapping of uint256 balances;

function fundingEnd() {
    return fundingEnd
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function whiteList(address arg1) {
    return whiteList[arg1]
}

function isFinalized() {
    return bool(stor3)
}

function owner() {
    return owner
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function fundingStart() {
    return fundingStart
}

function setWhiteList(address arg1) {
    require owner == msg.sender
    whiteList[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function finalize() {
    require not stor3
    require ethFundDepositAddress == msg.sender
    require block.timestamp >= fundingEnd
    stor3 = 1
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refund() {
    require owner == msg.sender
    require not stor3
    require block.timestamp >= fundingEnd
    require ethFundDepositAddress != msg.sender
    require balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    require totalSupply >= balances[address(msg.sender)]
    totalSupply -= balances[address(msg.sender)]
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value + totalSupply >= totalSupply
    require msg.value + totalSupply >= msg.value
    require msg.value >= 100 * 10^18
    require not stor3
    require block.timestamp >= fundingStart
    require block.timestamp <= fundingEnd
    require msg.value > 0
    require msg.value + totalSupply <= 17000 * 10^18
    require 1 == whiteList[address(msg.sender)]
    if not balances[address(msg.sender)]:
        balances[address(msg.sender)] = msg.value
        if msg.value + totalSupply >= totalSupply:
            if msg.value + totalSupply >= msg.value:
                totalSupply += msg.value
                call ethFundDepositAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    else:
        if msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]:
            if msg.value + balances[address(msg.sender)] >= msg.value:
                balances[address(msg.sender)] += msg.value
                if msg.value + totalSupply >= totalSupply:
                    if msg.value + totalSupply >= msg.value:
                        totalSupply += msg.value
                        call ethFundDepositAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    revert
}



}
