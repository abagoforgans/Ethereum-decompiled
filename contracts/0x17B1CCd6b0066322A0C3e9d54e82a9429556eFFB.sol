contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
uint256 price;
address stor2;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function price() {
    return price
}

function _fallback() payable {
    revert
}

function changePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    price = arg1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require 1 <= balances[address(msg.sender)]
    balances[address(msg.sender)]--
    emit Burn(arg1);
}

function buy() payable {
    require price > 0
    require price
    require balances[address(msg.sender)] + (msg.value / price) >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value / price
}

function creditUser(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
}

function payOwner() {
    require msg.sender == stor2
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
