contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor5;
address stor6;

function _fallback() payable {
    stor6 = 0x2c9bbb65e6e6ecd70ed2eb9731bc25669e886d06
    require not msg.value
    stor1 = 112000000 * 10^18
    stor5 = stor6
    stor3 = msg.sender
    stor2 = 10^18
    stor0 = stor2 / 1000
    return code.data[337 len 1423]
}



// =====================  Runtime code  =====================


uint256 minPrice;
uint256 stor1;
address stor3;
mapping of uint256 balance;
address stor5;

function getMinPrice() {
    return minPrice
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function killContract() {
    if stor3 != msg.sender:
    selfdestruct(stor3)
}

function getSold() {
    return (-stor1 + 112000000 * 10^18)
}

function setMinPrice(uint256 arg1) {
    if stor3 == msg.sender:
        minPrice = arg1
}

function _fallback() payable {
    if msg.value < minPrice:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if not stor1:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        else:
            if stor1 < 14000 * msg.value:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                stor1 += -14000 * msg.value
                if ext_code.size(stor5):
                    call stor5.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 14000 * msg.value
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            balance[address(msg.sender)] += 14000 * msg.value
                            call stor3 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        stor1 += 14000 * msg.value
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
    revert
}



}
