contract main {


// =======================  Init code  ======================


address stor6;

function _fallback() payable {
    stor6 = 0x2c9bbb65e6e6ecd70ed2eb9731bc25669e886d06
    require not msg.value
    return code.data[116 len 1479]
}



// =====================  Runtime code  =====================


uint256 price;
uint256 number;
uint256 sub_3f79938e;
address owner;
mapping of uint256 balances;
address stor5;
address stor6;

function balances(address arg1) {
    return balances[arg1]
}

function sub_3f79938e(?) {
    return sub_3f79938e
}

function number() {
    return number
}

function owner() {
    return owner
}

function price() {
    return price
}

function BuyToken() {
    number = 112 * 10^6
    stor5 = stor6
    owner = msg.sender
    sub_3f79938e = 10^18
    price = sub_3f79938e / 1000
}

function _fallback() payable {
    if msg.value < price:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if not number:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        else:
            require sub_3f79938e
            if number < 14000 * msg.value / sub_3f79938e:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                number -= 14000 * msg.value / sub_3f79938e
                if ext_code.size(stor5):
                    call stor5.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 14000 * msg.value / sub_3f79938e
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            balances[address(msg.sender)] += 14000 * msg.value / sub_3f79938e
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        number += 14000 * msg.value / sub_3f79938e
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
    revert
}



}
