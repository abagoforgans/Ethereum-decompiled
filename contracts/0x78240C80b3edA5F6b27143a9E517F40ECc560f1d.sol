contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor3;
mapping of uint256 stor8;

function _fallback() payable {
    stor0 = 21 * 10^14
    require not msg.value
    stor3 = msg.sender
    stor8[address(msg.sender)] = stor0
    emit Transfer(stor0, 0, stor3);
    return code.data[155 len 3337]
}



// =====================  Runtime code  =====================


const name = 'Bitcoin Quick'

const decimals = 8

const symbol = 'BTCQ'


uint256 totalSupply;
uint256 marketSupply;
uint256 marketPrice;
address stor3;
address stor4;
uint256 airDropAmount;
uint32 airDropHeight;
mapping of uint8 stor7;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function airDropAmount() {
    return airDropAmount
}

function totalSupply() {
    return totalSupply
}

function marketPrice() {
    return marketPrice
}

function airDropHeight() {
    return airDropHeight
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function marketSupply() {
    return marketSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function airDropMembers(address arg1) {
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function airDropSetup(address arg1, uint32 arg2, uint256 arg3) {
    require stor3 == msg.sender
    stor4 = arg1
    airDropHeight = arg2
    airDropAmount = 100 * 10^6 * arg3
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function crowdsaleSetup(uint256 arg1, uint256 arg2) {
    require stor3 == msg.sender
    require balanceOf[stor3] >= 100 * 10^6 * arg1
    marketSupply = 100 * 10^6 * arg1
    require 100 * 10^6 * arg2
    marketPrice = 10^18 / 100 * 10^6 * arg2
    return 1
}

function withdrawFunds(uint256 arg1) {
    require stor3 == msg.sender
    require arg1 > 0
    require eth.balance(this.address) >= arg1
    call stor3 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 > 0
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function airDropJoin(bytes32 arg1) payable {
    require not stor7[address(msg.sender)]
    require ext_code.size(stor4)
    call stor4.verify(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
    require airDropHeight > 0
    require airDropAmount > 0
    require balanceOf[stor3] >= airDropAmount
    balanceOf[stor3] -= airDropAmount
    balanceOf[msg.sender] += airDropAmount
    stor7[address(msg.sender)] = 1
    emit Transfer(airDropAmount, stor3, msg.sender);
    airDropHeight = uint32(airDropHeight - 1)
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    return 1
}

function purchase() payable {
    require msg.value > 0
    require marketSupply > 0
    require marketPrice > 0
    require balanceOf[stor3] > 0
    require marketPrice
    if balanceOf[stor3] < marketSupply:
        if balanceOf[stor3] < msg.value / marketPrice:
            marketSupply -= balanceOf[stor3]
            balanceOf[stor3] = 0
            balanceOf[msg.sender] += balanceOf[stor3]
            emit Transfer(balanceOf[stor3], stor3, msg.sender);
            if msg.value - (balanceOf[stor3] * marketPrice) > 0:
                call msg.sender with:
                   value msg.value - (balanceOf[stor3] * marketPrice) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            marketSupply -= msg.value / marketPrice
            balanceOf[stor3] -= msg.value / marketPrice
            balanceOf[msg.sender] += msg.value / marketPrice
            emit Transfer((msg.value / marketPrice), stor3, msg.sender);
            if msg.value - (msg.value / marketPrice * marketPrice) > 0:
                call msg.sender with:
                   value msg.value - (msg.value / marketPrice * marketPrice) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    else:
        if marketSupply < msg.value / marketPrice:
            marketSupply = 0
            balanceOf[stor3] -= marketSupply
            balanceOf[msg.sender] += marketSupply
            emit Transfer(marketSupply, stor3, msg.sender);
            if msg.value - (marketSupply * marketPrice) > 0:
                call msg.sender with:
                   value msg.value - (marketSupply * marketPrice) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            marketSupply -= msg.value / marketPrice
            balanceOf[stor3] -= msg.value / marketPrice
            balanceOf[msg.sender] += msg.value / marketPrice
            emit Transfer((msg.value / marketPrice), stor3, msg.sender);
            if msg.value - (msg.value / marketPrice * marketPrice) > 0:
                call msg.sender with:
                   value msg.value - (msg.value / marketPrice * marketPrice) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    return 1
}



}
