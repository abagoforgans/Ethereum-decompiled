contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint256 stor3;
address stor5;
address stor6;

function _fallback() {
    stor0 = 4000000000 * 10^18
    stor3 = block.timestamp
    stor6 = code.data[2752 len 20]
    stor5 = code.data[2784 len 20]
    stor1[code.data[2816 len 20]] = 200000000 * 10^18
    stor1[stor5] = 4000000000 * 10^18
    return code.data[179 len 2561]
}



// =====================  Runtime code  =====================


const sub_06721779(?) = 1160000000 * 10^18

const name = 'AlphaToken'

const decimals = 18

const sub_5574cff1(?) = 4000000000 * 10^18

const symbol = 'ATK'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 startTime;
uint256 sub_d68e0309;
address sub_98489bdbAddress;
address ethFundDepositAddress;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function sub_98489bdb(?) {
    return sub_98489bdbAddress
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function sub_d68e0309(?) {
    return sub_d68e0309
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function collectEther() {
    require ethFundDepositAddress == msg.sender
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function createTokens() payable {
    require msg.value
    require block.timestamp - startTime / 168 * 24 * 3600 <= 5
    if block.timestamp - startTime / 168 * 24 * 3600 < 1:
        if msg.value:
            require msg.value
            require 10267 * msg.value / msg.value == 10267
        require 10267 * msg.value <= 1160000000 * 10^18
        require balanceOf[stor5] <= 4000000000 * 10^18
        require -balanceOf[stor5] + 4000000000 * 10^18 <= (-10267 * msg.value) + 1160000000 * 10^18
        require 10267 * msg.value <= balanceOf[stor5]
        balanceOf[stor5] += -10267 * msg.value
        require (10267 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (10267 * msg.value) + balanceOf[msg.sender]
    else:
        if block.timestamp - startTime / 168 * 24 * 3600 >= 2:
            if msg.value:
                require msg.value
                require 7700 * msg.value / msg.value == 7700
            require 7700 * msg.value <= 1160000000 * 10^18
            require balanceOf[stor5] <= 4000000000 * 10^18
            require -balanceOf[stor5] + 4000000000 * 10^18 <= (-7700 * msg.value) + 1160000000 * 10^18
            require 7700 * msg.value <= balanceOf[stor5]
            balanceOf[stor5] += -7700 * msg.value
            require (7700 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (7700 * msg.value) + balanceOf[msg.sender]
        else:
            if msg.value:
                require msg.value
                require 8800 * msg.value / msg.value == 8800
            require 8800 * msg.value <= 1160000000 * 10^18
            require balanceOf[stor5] <= 4000000000 * 10^18
            require -balanceOf[stor5] + 4000000000 * 10^18 <= (-8800 * msg.value) + 1160000000 * 10^18
            require 8800 * msg.value <= balanceOf[stor5]
            balanceOf[stor5] += -8800 * msg.value
            require (8800 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (8800 * msg.value) + balanceOf[msg.sender]
}



}
