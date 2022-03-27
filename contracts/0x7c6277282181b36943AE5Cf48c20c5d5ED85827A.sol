contract main {


// =======================  Init code  ======================


uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor1 = 0
    require 2906600 > block.number
    stor3 = 2906600
    stor4 = 2910000
    stor2 = 0x9181a361e4bd0c98f7c25aa70ee4e512014691e9
    stor5 = 3098265
    return code.data[97 len 986]
}



// =====================  Runtime code  =====================


const min_goal_amount = 2 * 10^18

const max_goal_amount = 6 * 10^18


mapping of uint256 balances;
uint256 transfered_total;
address project_walletAddress;
uint256 presale_start_block;
uint256 presale_end_block;
uint256 refund_window_end_block;

function refund_window_end_block() {
    return refund_window_end_block
}

function balances(address arg1) {
    return balances[arg1]
}

function transfered_total() {
    return transfered_total
}

function project_wallet() {
    return project_walletAddress
}

function presale_start_block() {
    return presale_start_block
}

function presale_end_block() {
    return presale_end_block
}

function transfer_funds_to_project() {
    require transfered_total >= 2 * 10^18
    require eth.balance(this.address) != 0
    call project_walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer_left_funds_to_project() {
    require block.number > presale_end_block
    require transfered_total < 2 * 10^18
    require block.number > refund_window_end_block
    require eth.balance(this.address) != 0
    call project_walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refund() {
    require block.number > presale_end_block
    require transfered_total < 2 * 10^18
    require block.number <= refund_window_end_block
    require balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require block.number >= presale_start_block
    require block.number <= presale_end_block
    require msg.value != 0
    require transfered_total < 6 * 10^18
    if transfered_total + msg.value <= 6 * 10^18:
        balances[address(msg.sender)] += msg.value
        transfered_total += msg.value
    else:
        call msg.sender with:
           value transfered_total + msg.value - 6 * 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        balances[address(msg.sender)] = -transfered_total + balances[address(msg.sender)] + 6 * 10^18
        transfered_total = 6 * 10^18
}



}
