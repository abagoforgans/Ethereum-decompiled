contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor3;
mapping of uint256 stor4;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
    stor1 = 25000
    stor2 = 0
    stor4[address(stor3)] = 2500
    return code.data[219 len 1237]
}



// =====================  Runtime code  =====================


address stor0;
uint256 amount;
uint256 price;
address minterAddress;
mapping of uint256 balances;

function minter() payable {
    return minterAddress
}

function balances(address arg1) payable {
    return balances[arg1]
}

function price() payable {
    return price
}

function amount() payable {
    return amount
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function mint(address arg1, uint256 arg2) payable {
    if msg.sender == minterAddress:
        if amount < 100:
            if arg2 + amount <= 25000:
                amount += arg2
}

function _fallback() payable {
    if msg.value >= price:
        if msg.value / price <= amount:
            amount -= msg.value / price
            emit transfer(0, msg.sender, msg.value / price);
}

function send(address arg1, uint256 arg2) payable {
    if balances[address(msg.sender)] >= arg2:
        balances[address(msg.sender)] -= arg2
        balances[address(arg1)] += arg2
        emit transfer(msg.sender, address(arg1), arg2);
}



}
