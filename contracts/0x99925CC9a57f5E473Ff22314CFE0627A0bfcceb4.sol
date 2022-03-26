contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    stor2 = msg.sender
    stor3 = 250 * 10^18
    stor4 = 5 * 10^18
    stor5 = 3 * 10^6
    stor1[address(msg.sender)] = 0
    return code.data[129 len 1417]
}



// =====================  Runtime code  =====================


mapping of uint256 _available_interest_amount;
mapping of uint256 _term_deposit_end_date;
address thebankAddress;
uint256 minimum_payment;
uint256 deposit_fee;
uint256 contract_alive_until_this_block;
uint8 any_customer_payments_yet;
mapping of uint256 stor99;
mapping of uint256 stor1000000000000000000;

function get_available_interest_amount() {
    return _available_interest_amount[stor2]
}

function thebank() {
    return thebankAddress
}

function deposit_fee() {
    return deposit_fee
}

function get_balance() {
    return _available_interest_amount[address(msg.sender)]
}

function any_customer_payments_yet() {
    return bool(any_customer_payments_yet)
}

function contract_alive_until_this_block() {
    return contract_alive_until_this_block
}

function minimum_payment() {
    return minimum_payment
}

function get_term_deposit_end_date() {
    return _term_deposit_end_date[address(msg.sender)]
}

function close_bank() {
    if contract_alive_until_this_block >= block.number:
        if any_customer_payments_yet:
    selfdestruct(thebankAddress)
}

function _fallback() payable {
    _available_interest_amount[stor2] += msg.value
}

function set_deposit_fee(uint256 arg1) {
    if thebankAddress == msg.sender:
        deposit_fee = arg1
}

function set_minimum_payment(uint256 arg1) {
    if thebankAddress == msg.sender:
        minimum_payment = arg1
}

function extend_life_of_contract(uint256 arg1) {
    require thebankAddress == msg.sender
    require arg1 >= contract_alive_until_this_block
    contract_alive_until_this_block = arg1
    _term_deposit_end_date[stor2] = arg1
}

function deposit() payable {
    require msg.value >= minimum_payment
    if not _available_interest_amount[address(msg.sender)]:
        deposit_fee = 0
    if thebankAddress == msg.sender:
        _available_interest_amount[stor2] += msg.value
    else:
        any_customer_payments_yet = 1
        _available_interest_amount[address(msg.sender)] = msg.value - deposit_fee + _available_interest_amount[address(msg.sender)]
        _available_interest_amount[stor2] += deposit_fee
        _term_deposit_end_date[address(msg.sender)] = block.number + 30850
}

function withdraw(uint256 arg1) {
    require arg1 >= 10 * 10^18
    require arg1 <= _available_interest_amount[address(msg.sender)]
    require block.number >= _term_deposit_end_date[address(msg.sender)]
    if thebankAddress != msg.sender:
        if 10^18 <= stor[mem[1000000000000000032]][stor2]:
            storDE0B[address(msg.sender)] = 0
            storDE0B[msg.sender] -= arg1
            call msg.sender with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call msg.sender with:
               value 10^18 wei
                 gas 0 wei
        else:
            _available_interest_amount[stor2] = 0
            _available_interest_amount[msg.sender] -= arg1
            call msg.sender with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call msg.sender with:
               value _available_interest_amount[stor2] wei
                 gas 2300 * is_zero(value) wei
    else:
        _available_interest_amount[stor2] = 0
        _available_interest_amount[msg.sender] -= arg1
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if 0 <= _available_interest_amount[stor2]:
            call msg.sender with:
                 gas 2300 wei
        else:
            call msg.sender with:
               value _available_interest_amount[stor2] wei
                 gas 2300 * is_zero(value) wei
}



}
