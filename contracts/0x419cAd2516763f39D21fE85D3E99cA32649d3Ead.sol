contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 7500
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor8 = 0
    stor9 = 0
    require not msg.value
    require code.data[2974 len 20]
    require code.data[3006 len 20]
    stor0 = code.data[2974 len 20]
    stor1 = code.data[3006 len 20]
    return code.data[215 len 2747]
}



// =====================  Runtime code  =====================


address lrcTokenAddress;
address owner;
uint256 rate;
uint256 lrcReceived;
uint256 lrcSent;
uint256 ethReceived;
uint256 ethSent;
mapping of uint256 stor7;
uint256 depositId;
uint256 withdrawId;

function rate() {
    return rate
}

function withdrawId() {
    return withdrawId
}

function lrcTokenAddress() {
    return lrcTokenAddress
}

function lrcReceived() {
    return lrcReceived
}

function owner() {
    return owner
}

function depositId() {
    return depositId
}

function lrcSent() {
    return lrcSent
}

function ethSent() {
    return ethSent
}

function ethReceived() {
    return ethReceived
}

function setRate(uint256 arg1) {
    require owner == msg.sender
    require rate > 0
    emit RateChanged(rate, arg1);
    rate = arg1
}

function drain(uint256 arg1) payable {
    require owner == msg.sender
    require arg1 >= 0
    if arg1 < eth.balance(this.address):
        if arg1 > 0:
            call owner with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        require ext_code.size(lrcTokenAddress)
        call lrcTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] - lrcReceived + lrcSent > 0:
            require ext_code.size(lrcTokenAddress)
            call lrcTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args owner, ext_call.return_data[0] - lrcReceived + lrcSent
            require ext_call.success
            require ext_call.return_data[0]
        emit Drained(arg1, ext_call.return_data[0] - lrcReceived + lrcSent);
    else:
        if eth.balance(this.address) > 0:
            call owner with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        require ext_code.size(lrcTokenAddress)
        call lrcTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] - lrcReceived + lrcSent > 0:
            require ext_code.size(lrcTokenAddress)
            call lrcTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args owner, ext_call.return_data[0] - lrcReceived + lrcSent
            require ext_call.success
            require ext_call.return_data[0]
        emit Drained(eth.balance(this.address), ext_call.return_data[0] - lrcReceived + lrcSent);
}

function withdrawLRC() payable {
    require owner != msg.sender
    require msg.value > 0
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require rate
    if rate * msg.value < stor7[address(msg.sender)]:
        require rate * msg.value > 0
        require rate * msg.value / rate > 0
        stor7[address(msg.sender)] += -1 * rate * msg.value
        lrcSent += rate * msg.value
        ethReceived += rate * msg.value / rate
        require ext_code.size(lrcTokenAddress)
        call lrcTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, rate * msg.value
        require ext_call.success
        require ext_call.return_data[0]
        if msg.value - (rate * msg.value / rate) > 0:
            call msg.sender with:
               value msg.value - (rate * msg.value / rate) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        withdrawId++
        emit Withdrawal(withdrawId, msg.sender, rate * msg.value / rate, rate * msg.value);
    else:
        require stor7[address(msg.sender)] > 0
        require stor7[address(msg.sender)] / rate > 0
        stor7[address(msg.sender)] = 0
        lrcSent += stor7[address(msg.sender)]
        ethReceived += stor7[address(msg.sender)] / rate
        require ext_code.size(lrcTokenAddress)
        call lrcTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, stor7[address(msg.sender)]
        require ext_call.success
        require ext_call.return_data[0]
        if msg.value - (stor7[address(msg.sender)] / rate) > 0:
            call msg.sender with:
               value msg.value - (stor7[address(msg.sender)] / rate) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        withdrawId++
        emit Withdrawal(withdrawId, msg.sender, stor7[address(msg.sender)] / rate, stor7[address(msg.sender)]);
}

function depositLRC() payable {
    require owner != msg.sender
    require not msg.value
    require ext_code.size(lrcTokenAddress)
    call lrcTokenAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    require ext_call.success
    require ext_code.size(lrcTokenAddress)
    call lrcTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if eth.balance(this.address):
        require eth.balance(this.address)
        require rate * eth.balance(this.address) / eth.balance(this.address) == rate
    require rate
    if rate * eth.balance(this.address) < ext_call.return_data[0]:
        if rate * eth.balance(this.address) < ext_call.return_data[0]:
            require rate * eth.balance(this.address) > 0
            require rate * eth.balance(this.address) / rate > 0
            if rate * eth.balance(this.address) / rate:
                require rate * eth.balance(this.address) / rate
                require rate * rate * eth.balance(this.address) / rate / rate * eth.balance(this.address) / rate == rate
            require rate * rate * eth.balance(this.address) / rate <= rate * eth.balance(this.address)
            stor7[address(msg.sender)] += rate * eth.balance(this.address)
            lrcReceived += rate * eth.balance(this.address)
            ethSent += rate * eth.balance(this.address) / rate
            require ext_code.size(lrcTokenAddress)
            call lrcTokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), rate * eth.balance(this.address)
            require ext_call.success
            require ext_call.return_data[0]
            call msg.sender with:
               value rate * eth.balance(this.address) / rate wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            depositId++
            emit Deposit(depositId, msg.sender, rate * eth.balance(this.address) / rate, rate * eth.balance(this.address));
        else:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0] / rate > 0
            if ext_call.return_data[0] / rate:
                require ext_call.return_data[0] / rate
                require rate * ext_call.return_data[0] / rate / ext_call.return_data[0] / rate == rate
            require rate * ext_call.return_data[0] / rate <= ext_call.return_data[0]
            stor7[address(msg.sender)] += ext_call.return_data[0]
            lrcReceived += ext_call.return_data[0]
            ethSent += ext_call.return_data[0] / rate
            require ext_code.size(lrcTokenAddress)
            call lrcTokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            call msg.sender with:
               value ext_call.return_data[0] / rate wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            depositId++
            emit Deposit(depositId, msg.sender, ext_call.return_data[0] / rate, ext_call.return_data[0]);
    else:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0] / rate > 0
        if ext_call.return_data[0] / rate:
            require ext_call.return_data[0] / rate
            require rate * ext_call.return_data[0] / rate / ext_call.return_data[0] / rate == rate
        require rate * ext_call.return_data[0] / rate <= ext_call.return_data[0]
        stor7[address(msg.sender)] += ext_call.return_data[0]
        lrcReceived += ext_call.return_data[0]
        ethSent += ext_call.return_data[0] / rate
        require ext_code.size(lrcTokenAddress)
        call lrcTokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        call msg.sender with:
           value ext_call.return_data[0] / rate wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        depositId++
        emit Deposit(depositId, msg.sender, ext_call.return_data[0] / rate, ext_call.return_data[0]);
}

function _fallback() payable {
    if owner != msg.sender:
        require owner != msg.sender
        if msg.value:
            require msg.value > 0
            if msg.value:
                require msg.value
                require rate * msg.value / msg.value == rate
            require rate
            if rate * msg.value < stor7[address(msg.sender)]:
                require rate * msg.value > 0
                require rate * msg.value / rate > 0
                stor7[address(msg.sender)] += -1 * rate * msg.value
                lrcSent += rate * msg.value
                ethReceived += rate * msg.value / rate
                require ext_code.size(lrcTokenAddress)
                call lrcTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, rate * msg.value
                require ext_call.success
                require ext_call.return_data[0]
                if msg.value - (rate * msg.value / rate) > 0:
                    call msg.sender with:
                       value msg.value - (rate * msg.value / rate) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                withdrawId++
                emit Withdrawal(withdrawId, msg.sender, rate * msg.value / rate, rate * msg.value);
            else:
                require stor7[address(msg.sender)] > 0
                require stor7[address(msg.sender)] / rate > 0
                stor7[address(msg.sender)] = 0
                lrcSent += stor7[address(msg.sender)]
                ethReceived += stor7[address(msg.sender)] / rate
                require ext_code.size(lrcTokenAddress)
                call lrcTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, stor7[address(msg.sender)]
                require ext_call.success
                require ext_call.return_data[0]
                if msg.value - (stor7[address(msg.sender)] / rate) > 0:
                    call msg.sender with:
                       value msg.value - (stor7[address(msg.sender)] / rate) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                withdrawId++
                emit Withdrawal(withdrawId, msg.sender, stor7[address(msg.sender)] / rate, stor7[address(msg.sender)]);
        else:
            require not msg.value
            require ext_code.size(lrcTokenAddress)
            call lrcTokenAddress.0xdd62ed3e with:
                 gas gas_remaining - 710 wei
                args msg.sender, this.address
            require ext_call.success
            require ext_code.size(lrcTokenAddress)
            call lrcTokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            if eth.balance(this.address):
                require eth.balance(this.address)
                require rate * eth.balance(this.address) / eth.balance(this.address) == rate
            require rate
            if rate * eth.balance(this.address) < ext_call.return_data[0]:
                if rate * eth.balance(this.address) < ext_call.return_data[0]:
                    require rate * eth.balance(this.address) > 0
                    require rate * eth.balance(this.address) / rate > 0
                    if rate * eth.balance(this.address) / rate:
                        require rate * eth.balance(this.address) / rate
                        require rate * rate * eth.balance(this.address) / rate / rate * eth.balance(this.address) / rate == rate
                    require rate * rate * eth.balance(this.address) / rate <= rate * eth.balance(this.address)
                    stor7[address(msg.sender)] += rate * eth.balance(this.address)
                    lrcReceived += rate * eth.balance(this.address)
                    ethSent += rate * eth.balance(this.address) / rate
                    require ext_code.size(lrcTokenAddress)
                    call lrcTokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), rate * eth.balance(this.address)
                    require ext_call.success
                    require ext_call.return_data[0]
                    call msg.sender with:
                       value rate * eth.balance(this.address) / rate wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    depositId++
                    emit Deposit(depositId, msg.sender, rate * eth.balance(this.address) / rate, rate * eth.balance(this.address));
                else:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0] / rate > 0
                    if ext_call.return_data[0] / rate:
                        require ext_call.return_data[0] / rate
                        require rate * ext_call.return_data[0] / rate / ext_call.return_data[0] / rate == rate
                    require rate * ext_call.return_data[0] / rate <= ext_call.return_data[0]
                    stor7[address(msg.sender)] += ext_call.return_data[0]
                    lrcReceived += ext_call.return_data[0]
                    ethSent += ext_call.return_data[0] / rate
                    require ext_code.size(lrcTokenAddress)
                    call lrcTokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    call msg.sender with:
                       value ext_call.return_data[0] / rate wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    depositId++
                    emit Deposit(depositId, msg.sender, ext_call.return_data[0] / rate, ext_call.return_data[0]);
            else:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0] / rate > 0
                if ext_call.return_data[0] / rate:
                    require ext_call.return_data[0] / rate
                    require rate * ext_call.return_data[0] / rate / ext_call.return_data[0] / rate == rate
                require rate * ext_call.return_data[0] / rate <= ext_call.return_data[0]
                stor7[address(msg.sender)] += ext_call.return_data[0]
                lrcReceived += ext_call.return_data[0]
                ethSent += ext_call.return_data[0] / rate
                require ext_code.size(lrcTokenAddress)
                call lrcTokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                call msg.sender with:
                   value ext_call.return_data[0] / rate wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                depositId++
                emit Deposit(depositId, msg.sender, ext_call.return_data[0] / rate, ext_call.return_data[0]);
}



}
