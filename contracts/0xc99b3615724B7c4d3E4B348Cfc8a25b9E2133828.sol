contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() {
    stor2 = msg.sender
    stor3 = 250 * 10^18
    stor4 = 5 * 10^18
    stor5 = 3 * 10^6
    stor6 = 0
    stor1[address(msg.sender)] = 3 * 10^6
    return code.data[128 len 1348]
}



// =====================  Runtime code  =====================


mapping of uint256 _balance;
mapping of uint256 _term_deposit_end_date;
address stor2;
uint256 minimum_deposit_amount;
uint256 deposit_fee;
uint256 contract_alive_until_this_block;
uint256 count_customer_deposits;
mapping of uint256 stor99;
mapping of uint256 stor1000000000000000000;

function get_balance(address arg1) {
    return _balance[address(arg1)]
}

function get_available_interest_amount() {
    return _balance[stor2]
}

function deposit_fee() {
    return deposit_fee
}

function get_term_deposit_end_date(address arg1) {
    return _term_deposit_end_date[address(arg1)]
}

function count_customer_deposits() {
    return count_customer_deposits
}

function minimum_deposit_amount() {
    return minimum_deposit_amount
}

function contract_alive_until_this_block() {
    return contract_alive_until_this_block
}

function close_bank() {
    if contract_alive_until_this_block >= block.number:
        if count_customer_deposits:
    selfdestruct(stor2)
}

function _fallback() payable {
    _balance[stor2] += msg.value
}

function set_deposit_fee(uint256 arg1) {
    if stor2 == msg.sender:
        deposit_fee = arg1
}

function set_minimum_payment(uint256 arg1) {
    if stor2 == msg.sender:
        minimum_deposit_amount = arg1
}

function extend_life_of_contract(uint256 arg1) {
    require stor2 == msg.sender
    require arg1 >= contract_alive_until_this_block
    contract_alive_until_this_block = arg1
    _term_deposit_end_date[stor2] = arg1
}

function deposit() payable {
    require msg.value >= minimum_deposit_amount
    if not _balance[address(msg.sender)]:
        deposit_fee = 0
    if stor2 == msg.sender:
        _balance[stor2] += msg.value
    else:
        count_customer_deposits++
        _balance[address(msg.sender)] = msg.value - deposit_fee + _balance[address(msg.sender)]
        _balance[stor2] += deposit_fee
        _term_deposit_end_date[address(msg.sender)] = block.number + 30850
}

function withdraw(uint256 arg1) {
    require arg1 >= 10 * 10^18
    require arg1 <= _balance[address(msg.sender)]
    require block.number >= _term_deposit_end_date[address(msg.sender)]
    if stor2 != msg.sender:
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
            _balance[stor2] = 0
            _balance[msg.sender] -= arg1
            call msg.sender with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call msg.sender with:
               value _balance[stor2] wei
                 gas 2300 * is_zero(value) wei
    else:
        _balance[stor2] = 0
        _balance[msg.sender] -= arg1
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if 0 <= _balance[stor2]:
            call msg.sender with:
                 gas 2300 wei
        else:
            call msg.sender with:
               value _balance[stor2] wei
                 gas 2300 * is_zero(value) wei
}



}
