contract main {




// =====================  Runtime code  =====================


const sub_08863c5b(?) = 120

const sub_b9640f8c(?) = 10^16


mapping of uint256 balances;
address artistAddress;
address sub_3351612fAddress;
uint256 price;
uint256 sub_6a07a832;
uint8 stor5;

function balances(address arg1) {
    return balances[arg1]
}

function sub_3351612f(?) {
    return sub_3351612fAddress
}

function artist() {
    return artistAddress
}

function sub_6a07a832(?) {
    return sub_6a07a832
}

function price() {
    return price
}

function balance() {
    return balances[address(msg.sender)]
}

function _fallback() payable {
    revert
}

function deposit() payable {
    if balances[address(msg.sender)] + msg.value < balances[address(msg.sender)]:
        revert with 0, 'ds-math-add-overflow'
    balances[address(msg.sender)] += msg.value
    emit LogDepositMade(msg.sender, msg.value);
    return balances[address(msg.sender)]
}

function withdraw(uint256 arg1) {
    if arg1 <= balances[address(msg.sender)]:
        require arg1 == arg1
    else:
        require balances[address(msg.sender)] == arg1
    if balances[address(msg.sender)] - arg1 > balances[address(msg.sender)]:
        revert with 0, 'ds-math-sub-underflow'
    balances[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return balances[address(msg.sender)]
}

function sub_39e9e8eb(?) {
    if 120 * price / 120 != price:
        revert with 0, 'ds-math-mul-overflow'
    if 120000000000 * 10^18 * price / 1000000000 * 10^18 != 120 * price:
        revert with 0, 'ds-math-mul-overflow'
    if (120000000000 * 10^18 * price) + 50000000000 * 10^18 < 120000000000 * 10^18 * price:
        revert with 0, 'ds-math-add-overflow'
    if ((120000000000 * 10^18 * price) + 50000000000 * 10^18 / 100000000000 * 10^18) + price < (120000000000 * 10^18 * price) + 50000000000 * 10^18 / 100000000000 * 10^18:
        revert with 0, 'ds-math-add-overflow'
    return (((120000000000 * 10^18 * price) + 50000000000 * 10^18 / 100000000000 * 10^18) + price + 10^16)
}

function buyArt(uint256 arg1, uint256 arg2) {
    require sub_3351612fAddress != msg.sender
    if arg1 >= price:
        require arg1 == arg1
    else:
        require price == arg1
    if arg1 <= balances[address(msg.sender)]:
        require arg1 == arg1
    else:
        require balances[address(msg.sender)] == arg1
    if 120 * price / 120 != price:
        revert with 0, 'ds-math-mul-overflow'
    if 120000000000 * 10^18 * price / 1000000000 * 10^18 != 120 * price:
        revert with 0, 'ds-math-mul-overflow'
    if (120000000000 * 10^18 * price) + 50000000000 * 10^18 < 120000000000 * 10^18 * price:
        revert with 0, 'ds-math-add-overflow'
    if ((120000000000 * 10^18 * price) + 50000000000 * 10^18 / 100000000000 * 10^18) + price < (120000000000 * 10^18 * price) + 50000000000 * 10^18 / 100000000000 * 10^18:
        revert with 0, 'ds-math-add-overflow'
    if arg2 <= ((120000000000 * 10^18 * price) + 50000000000 * 10^18 / 100000000000 * 10^18) + price + 10^16:
        require arg2 == arg2
    else:
        require ((120000000000 * 10^18 * price) + 50000000000 * 10^18 / 100000000000 * 10^18) + price + 10^16 == arg2
    require not stor5
    stor5 = 1
    if balances[address(msg.sender)] - price > balances[address(msg.sender)]:
        revert with 0, 'ds-math-sub-underflow'
    balances[address(msg.sender)] -= price
    if price - sub_6a07a832 > price:
        revert with 0, 'ds-math-sub-underflow'
    if balances[stor2] + price - sub_6a07a832 < balances[stor2]:
        revert with 0, 'ds-math-add-overflow'
    balances[stor2] = balances[stor2] + price - sub_6a07a832
    if balances[stor1] + sub_6a07a832 < balances[stor1]:
        revert with 0, 'ds-math-add-overflow'
    balances[stor1] += sub_6a07a832
    sub_3351612fAddress = msg.sender
    if arg2 <= price:
        if arg2 == arg2:
            sub_6a07a832 = 0
        else:
            if arg2 - price > arg2:
                revert with 0, 'ds-math-sub-underflow'
            if (1000000000 * 10^18 * arg2) - (1000000000 * 10^18 * price) / 1000000000 * 10^18 != arg2 - price:
                revert with 0, 'ds-math-mul-overflow'
            sub_6a07a832 = (1000000000 * 10^18 * arg2) + (-1000000000 * 10^18 * price) + 3000000000 * 10^18 / 6000000000 * 10^18
    else:
        if price == arg2:
            sub_6a07a832 = 0
        else:
            if arg2 - price > arg2:
                revert with 0, 'ds-math-sub-underflow'
            if (1000000000 * 10^18 * arg2) - (1000000000 * 10^18 * price) / 1000000000 * 10^18 != arg2 - price:
                revert with 0, 'ds-math-mul-overflow'
            sub_6a07a832 = (1000000000 * 10^18 * arg2) + (-1000000000 * 10^18 * price) + 3000000000 * 10^18 / 6000000000 * 10^18
    emit 0x7b9dd554: msg.sender, price, arg2
    price = arg2
    stor5 = 0
    return balances[address(msg.sender)]
}



}
