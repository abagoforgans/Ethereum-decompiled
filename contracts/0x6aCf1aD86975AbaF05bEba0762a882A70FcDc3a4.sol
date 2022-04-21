contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint8 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 10^18
    stor2 = 0
    stor3 = 1
    stor4 = 0
    stor0 = msg.sender
    return code.data[132 len 3805]
}



// =====================  Runtime code  =====================


const name = 'Pre-ICO Granite Learning Coin'

const decimals = 18

const bonus = 50

const symbol = 'PGLC'

const coinPrice = 25 * 10^14


address owner;
uint256 sub_763f2c14;
uint256 totalSupply;
uint8 stor3;
uint256 investorsCount;
mapping of uint256 balanceOf;
mapping of struct stor6;
mapping of address sub_8c6cdb1b;

function totalSupply() {
    return totalSupply
}

function isActive() {
    return bool(stor3)
}

function investorsCount() {
    return investorsCount
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_763f2c14(?) {
    return sub_763f2c14
}

function sub_8c6cdb1b(?) {
    require investorsCount > arg1
    return sub_8c6cdb1b[arg1]
}

function sub_8d832d35(?) {
    require sub_8c6cdb1b[arg1]
    return balanceOf[stor7[arg1]]
}

function owner() {
    return owner
}

function setActive(bool arg1) {
    require msg.sender == owner
    stor3 = uint8(arg1)
}

function sub_b57c5c17(?) {
    require msg.sender == owner
    require arg1 > 0
    sub_763f2c14 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function sub_53208205(?) {
    if stor6[address(arg1)].field_0 > 0:
        return stor6[address(arg1)].field_0
    return 50
}

function sub_30fc24e5(?) {
    require msg.sender == owner
    require arg2 > 0
    require arg2 <= 100
    stor6[address(arg1)].field_0 = arg2
    stor6[address(arg1)].field_8 = 0
}

function drain() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require stor3
    require msg.value >= sub_763f2c14
    if not balanceOf[address(msg.sender)]:
        sub_8c6cdb1b[stor4] = msg.sender
        investorsCount++
    if msg.value:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
    require 10^18 * msg.value == (25 * 10^14 * 10^18 * msg.value / 25 * 10^14) + (10^18 * msg.value % 25 * 10^14)
    require 10^18 * msg.value / 25 * 10^14 == (100 * 10^18 * msg.value / 25 * 10^14 / 100) + (10^18 * msg.value / 25 * 10^14 % 100)
    if stor6[address(msg.sender)].field_0 > 0:
        if 10^18 * msg.value / 25 * 10^14 / 100:
            require 10^18 * msg.value / 25 * 10^14 / 100
            require 10^18 * msg.value / 25 * 10^14 / 100 * stor6[address(msg.sender)].field_0 / 10^18 * msg.value / 25 * 10^14 / 100 == stor6[address(msg.sender)].field_0
        require (10^18 * msg.value / 25 * 10^14) + (10^18 * msg.value / 25 * 10^14 / 100 * stor6[address(msg.sender)].field_0) >= 10^18 * msg.value / 25 * 10^14
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) + (10^18 * msg.value / 25 * 10^14 / 100 * stor6[address(msg.sender)].field_0)
        totalSupply = totalSupply + (10^18 * msg.value / 25 * 10^14) + (10^18 * msg.value / 25 * 10^14 / 100 * stor6[address(msg.sender)].field_0)
        emit Paid(((10^18 * msg.value / 25 * 10^14) + (10^18 * msg.value / 25 * 10^14 / 100 * stor6[address(msg.sender)].field_0)), msg.sender);
    else:
        if 10^18 * msg.value / 25 * 10^14 / 100:
            require 10^18 * msg.value / 25 * 10^14 / 100
            require 50 * 10^18 * msg.value / 25 * 10^14 / 100 / 10^18 * msg.value / 25 * 10^14 / 100 == 50
        require (10^18 * msg.value / 25 * 10^14) + (50 * 10^18 * msg.value / 25 * 10^14 / 100) >= 10^18 * msg.value / 25 * 10^14
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10^18 * msg.value / 25 * 10^14) + (50 * 10^18 * msg.value / 25 * 10^14 / 100)
        totalSupply = totalSupply + (10^18 * msg.value / 25 * 10^14) + (50 * 10^18 * msg.value / 25 * 10^14 / 100)
        emit Paid(((10^18 * msg.value / 25 * 10^14) + (50 * 10^18 * msg.value / 25 * 10^14 / 100)), msg.sender);
}



}
