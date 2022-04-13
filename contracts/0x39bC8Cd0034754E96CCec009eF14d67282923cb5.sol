contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor10 = 0
    stor11 = 0
    require not msg.value
    require code.data[3840 len 20]
    require code.data[3872 len 20]
    stor0 = code.data[3840 len 20]
    stor1 = code.data[3872 len 20]
    stor6 = block.timestamp
    stor7 = block.timestamp + (1440 * 24 * 3600)
    return code.data[243 len 3585]
}



// =====================  Runtime code  =====================


const sub_5afbc4a8(?) = 100

const DEPOSIT_WINDOW = (1440 * 24 * 3600)

const WITHDRAWAL_DELAY = (4320 * 24 * 3600)

const WITHDRAWAL_WINDOW = (2160 * 24 * 3600)

const RATE = 7500

const MAX_LRC_DEPOSIT_PER_ADDRESS = 150000 * 10^18


address lrcTokenAddress;
address owner;
uint256 lrcDeposited;
uint256 lrcWithdrawn;
uint256 ethReceived;
uint256 ethSent;
uint256 depositStartTime;
uint256 depositStopTime;
uint8 closed;
mapping of struct stor9;
uint256 depositId;
uint256 withdrawId;

function withdrawId() {
    return withdrawId
}

function lrcTokenAddress() {
    return lrcTokenAddress
}

function depositStartTime() {
    return depositStartTime
}

function closed() {
    return bool(closed)
}

function depositStopTime() {
    return depositStopTime
}

function owner() {
    return owner
}

function depositId() {
    return depositId
}

function lrcDeposited() {
    return lrcDeposited
}

function lrcWithdrawn() {
    return lrcWithdrawn
}

function ethSent() {
    return ethSent
}

function ethReceived() {
    return ethReceived
}

function drain(uint256 arg1) payable {
    require arg1 > 0
    require owner == msg.sender
    if arg1 < eth.balance(this.address):
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Drained(arg1);
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Drained(eth.balance(this.address));
}

function close() payable {
    require not closed
    require owner == msg.sender
    require block.timestamp > depositStopTime + (6480 * 24 * 3600)
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
    if ext_call.return_data[0] > 0:
        require ext_code.size(lrcTokenAddress)
        call lrcTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    closed = 1
    emit Closed(eth.balance(this.address), ext_call.return_data[0]);
}

function withdrawLRC() payable {
    require not closed
    require owner != msg.sender
    require msg.value > 0
    require block.timestamp > depositStopTime
    require block.timestamp >= stor9[address(msg.sender)].field_256 + (4320 * 24 * 3600)
    require block.timestamp <= stor9[address(msg.sender)].field_256 + (6480 * 24 * 3600)
    require msg.value <= stor9[address(msg.sender)].field_0
    if msg.value < stor9[address(msg.sender)].field_0:
        if msg.value < eth.balance(this.address):
            stor9[address(msg.sender)].field_0 -= msg.value
            stor9[address(msg.sender)].field_0 -= msg.value
            if msg.value:
                require msg.value
                require 7500 * msg.value / msg.value == 7500
            lrcWithdrawn += 7500 * msg.value
            ethReceived += msg.value
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(lrcTokenAddress)
            call lrcTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 7500 * msg.value
            require ext_call.success
            require ext_call.return_data[0]
            withdrawId++
            emit Withdrawal(withdrawId, msg.sender, msg.value, 7500 * msg.value);
        else:
            stor9[address(msg.sender)].field_0 -= eth.balance(this.address)
            stor9[address(msg.sender)].field_0 -= eth.balance(this.address)
            if eth.balance(this.address):
                require eth.balance(this.address)
                require 7500 * eth.balance(this.address) / eth.balance(this.address) == 7500
            lrcWithdrawn += 7500 * eth.balance(this.address)
            ethReceived += eth.balance(this.address)
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(lrcTokenAddress)
            call lrcTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 7500 * eth.balance(this.address)
            require ext_call.success
            require ext_call.return_data[0]
            if msg.value - eth.balance(this.address) > 0:
                call msg.sender with:
                   value msg.value - eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            withdrawId++
            emit Withdrawal(withdrawId, msg.sender, eth.balance(this.address), 7500 * eth.balance(this.address));
    else:
        if stor9[address(msg.sender)].field_0 < eth.balance(this.address):
            stor9[address(msg.sender)].field_0 = 0
            stor9[address(msg.sender)].field_0 = 0
            if stor9[address(msg.sender)].field_0:
                require stor9[address(msg.sender)].field_0
                require 7500 * stor9[address(msg.sender)].field_0 / stor9[address(msg.sender)].field_0 == 7500
            lrcWithdrawn += 7500 * stor9[address(msg.sender)].field_0
            ethReceived += stor9[address(msg.sender)].field_0
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(lrcTokenAddress)
            call lrcTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 7500 * stor9[address(msg.sender)].field_0
            require ext_call.success
            require ext_call.return_data[0]
            if msg.value - stor9[address(msg.sender)].field_0 > 0:
                call msg.sender with:
                   value msg.value - stor9[address(msg.sender)].field_0 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            withdrawId++
            emit Withdrawal(withdrawId, msg.sender, stor9[address(msg.sender)].field_0, 7500 * stor9[address(msg.sender)].field_0);
        else:
            stor9[address(msg.sender)].field_0 -= eth.balance(this.address)
            stor9[address(msg.sender)].field_0 -= eth.balance(this.address)
            if eth.balance(this.address):
                require eth.balance(this.address)
                require 7500 * eth.balance(this.address) / eth.balance(this.address) == 7500
            lrcWithdrawn += 7500 * eth.balance(this.address)
            ethReceived += eth.balance(this.address)
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(lrcTokenAddress)
            call lrcTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 7500 * eth.balance(this.address)
            require ext_call.success
            require ext_call.return_data[0]
            if msg.value - eth.balance(this.address) > 0:
                call msg.sender with:
                   value msg.value - eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            withdrawId++
            emit Withdrawal(withdrawId, msg.sender, eth.balance(this.address), 7500 * eth.balance(this.address));
}

function depositLRC() payable {
    require not closed
    require owner != msg.sender
    require msg.value > 0
    require block.timestamp <= depositStopTime
    if msg.value:
        require msg.value
        require 100 * msg.value / msg.value == 100
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
    if eth.balance(this.address) < ext_call.return_data[0] / 7500:
        if eth.balance(this.address) < ext_call.return_data[0] / 7500:
            if eth.balance(this.address) < -stor9[address(msg.sender)].field_0 + 20 * 10^18:
                if eth.balance(this.address) < 100 * msg.value:
                    require eth.balance(this.address) > 0
                    stor9[address(msg.sender)].field_0 += eth.balance(this.address)
                    stor9[address(msg.sender)].field_256 = block.timestamp
                    stor9[address(msg.sender)].field_0 += eth.balance(this.address)
                    if eth.balance(this.address):
                        require eth.balance(this.address)
                        require 7500 * eth.balance(this.address) / eth.balance(this.address) == 7500
                    lrcDeposited += 7500 * eth.balance(this.address)
                    ethSent += eth.balance(this.address)
                    call msg.sender with:
                       value eth.balance(this.address) + msg.value - (eth.balance(this.address) / 100) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(lrcTokenAddress)
                    call lrcTokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), 7500 * eth.balance(this.address)
                    require ext_call.success
                    require ext_call.return_data[0]
                    depositId++
                    emit Deposit(depositId, msg.sender, eth.balance(this.address), 7500 * eth.balance(this.address));
                else:
                    require 100 * msg.value > 0
                    stor9[address(msg.sender)].field_0 += 100 * msg.value
                    stor9[address(msg.sender)].field_256 = block.timestamp
                    stor9[address(msg.sender)].field_0 += 100 * msg.value
                    if 100 * msg.value:
                        require 100 * msg.value
                        require 750000 * msg.value / 100 * msg.value == 7500
                    lrcDeposited += 750000 * msg.value
                    ethSent += 100 * msg.value
                    call msg.sender with:
                       value (101 * msg.value) - (100 * msg.value / 100) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(lrcTokenAddress)
                    call lrcTokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), 750000 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    depositId++
                    emit Deposit(depositId, msg.sender, 100 * msg.value, 750000 * msg.value);
            else:
                if -stor9[address(msg.sender)].field_0 + 20 * 10^18 < 100 * msg.value:
                    require -stor9[address(msg.sender)].field_0 + 20 * 10^18 > 0
                    stor9[address(msg.sender)].field_0 = 20 * 10^18
                    stor9[address(msg.sender)].field_256 = block.timestamp
                    stor9[address(msg.sender)].field_0 = 20 * 10^18
                    if -stor9[address(msg.sender)].field_0 + 20 * 10^18:
                        require -stor9[address(msg.sender)].field_0 + 20 * 10^18
                        require (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18 / -stor9[address(msg.sender)].field_0 + 20 * 10^18 == 7500
                    lrcDeposited = (-7500 * stor9[address(msg.sender)].field_0) + lrcDeposited + 150000 * 10^18
                    ethSent = -stor9[address(msg.sender)].field_0 + ethSent + 20 * 10^18
                    call msg.sender with:
                       value -stor9[address(msg.sender)].field_0 + msg.value + -(-stor9[address(msg.sender)].field_0 + 20 * 10^18 / 100) + 20 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(lrcTokenAddress)
                    call lrcTokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    depositId++
                    emit Deposit(depositId, msg.sender, -stor9[address(msg.sender)].field_0 + 20 * 10^18, (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18);
                else:
                    require 100 * msg.value > 0
                    stor9[address(msg.sender)].field_0 += 100 * msg.value
                    stor9[address(msg.sender)].field_256 = block.timestamp
                    stor9[address(msg.sender)].field_0 += 100 * msg.value
                    if 100 * msg.value:
                        require 100 * msg.value
                        require 750000 * msg.value / 100 * msg.value == 7500
                    lrcDeposited += 750000 * msg.value
                    ethSent += 100 * msg.value
                    call msg.sender with:
                       value (101 * msg.value) - (100 * msg.value / 100) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(lrcTokenAddress)
                    call lrcTokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), 750000 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    depositId++
                    emit Deposit(depositId, msg.sender, 100 * msg.value, 750000 * msg.value);
        else:
            if ext_call.return_data[0] / 7500 < -stor9[address(msg.sender)].field_0 + 20 * 10^18:
                if ext_call.return_data[0] / 7500 < 100 * msg.value:
                    require ext_call.return_data[0] / 7500 > 0
                    stor9[address(msg.sender)].field_0 += ext_call.return_data[0] / 7500
                    stor9[address(msg.sender)].field_256 = block.timestamp
                    stor9[address(msg.sender)].field_0 += ext_call.return_data[0] / 7500
                    if ext_call.return_data[0] / 7500:
                        require ext_call.return_data[0] / 7500
                        require 7500 * ext_call.return_data[0] / 7500 / ext_call.return_data[0] / 7500 == 7500
                    lrcDeposited += 7500 * ext_call.return_data[0] / 7500
                    ethSent += ext_call.return_data[0] / 7500
                    call msg.sender with:
                       value (ext_call.return_data[0] / 7500) + msg.value - (ext_call.return_data[0] / 7500 / 100) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(lrcTokenAddress)
                    call lrcTokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), 7500 * ext_call.return_data[0] / 7500
                    require ext_call.success
                    require ext_call.return_data[0]
                    depositId++
                    emit Deposit(depositId, msg.sender, ext_call.return_data[0] / 7500, 7500 * ext_call.return_data[0] / 7500);
                else:
                    require 100 * msg.value > 0
                    stor9[address(msg.sender)].field_0 += 100 * msg.value
                    stor9[address(msg.sender)].field_256 = block.timestamp
                    stor9[address(msg.sender)].field_0 += 100 * msg.value
                    if 100 * msg.value:
                        require 100 * msg.value
                        require 750000 * msg.value / 100 * msg.value == 7500
                    lrcDeposited += 750000 * msg.value
                    ethSent += 100 * msg.value
                    call msg.sender with:
                       value (101 * msg.value) - (100 * msg.value / 100) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(lrcTokenAddress)
                    call lrcTokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), 750000 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    depositId++
                    emit Deposit(depositId, msg.sender, 100 * msg.value, 750000 * msg.value);
            else:
                if -stor9[address(msg.sender)].field_0 + 20 * 10^18 < 100 * msg.value:
                    require -stor9[address(msg.sender)].field_0 + 20 * 10^18 > 0
                    stor9[address(msg.sender)].field_0 = 20 * 10^18
                    stor9[address(msg.sender)].field_256 = block.timestamp
                    stor9[address(msg.sender)].field_0 = 20 * 10^18
                    if -stor9[address(msg.sender)].field_0 + 20 * 10^18:
                        require -stor9[address(msg.sender)].field_0 + 20 * 10^18
                        require (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18 / -stor9[address(msg.sender)].field_0 + 20 * 10^18 == 7500
                    lrcDeposited = (-7500 * stor9[address(msg.sender)].field_0) + lrcDeposited + 150000 * 10^18
                    ethSent = -stor9[address(msg.sender)].field_0 + ethSent + 20 * 10^18
                    call msg.sender with:
                       value -stor9[address(msg.sender)].field_0 + msg.value + -(-stor9[address(msg.sender)].field_0 + 20 * 10^18 / 100) + 20 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(lrcTokenAddress)
                    call lrcTokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    depositId++
                    emit Deposit(depositId, msg.sender, -stor9[address(msg.sender)].field_0 + 20 * 10^18, (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18);
                else:
                    require 100 * msg.value > 0
                    stor9[address(msg.sender)].field_0 += 100 * msg.value
                    stor9[address(msg.sender)].field_256 = block.timestamp
                    stor9[address(msg.sender)].field_0 += 100 * msg.value
                    if 100 * msg.value:
                        require 100 * msg.value
                        require 750000 * msg.value / 100 * msg.value == 7500
                    lrcDeposited += 750000 * msg.value
                    ethSent += 100 * msg.value
                    call msg.sender with:
                       value (101 * msg.value) - (100 * msg.value / 100) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(lrcTokenAddress)
                    call lrcTokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), 750000 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    depositId++
                    emit Deposit(depositId, msg.sender, 100 * msg.value, 750000 * msg.value);
    else:
        if ext_call.return_data[0] / 7500 < -stor9[address(msg.sender)].field_0 + 20 * 10^18:
            if ext_call.return_data[0] / 7500 < 100 * msg.value:
                require ext_call.return_data[0] / 7500 > 0
                stor9[address(msg.sender)].field_0 += ext_call.return_data[0] / 7500
                stor9[address(msg.sender)].field_256 = block.timestamp
                stor9[address(msg.sender)].field_0 += ext_call.return_data[0] / 7500
                if ext_call.return_data[0] / 7500:
                    require ext_call.return_data[0] / 7500
                    require 7500 * ext_call.return_data[0] / 7500 / ext_call.return_data[0] / 7500 == 7500
                lrcDeposited += 7500 * ext_call.return_data[0] / 7500
                ethSent += ext_call.return_data[0] / 7500
                call msg.sender with:
                   value (ext_call.return_data[0] / 7500) + msg.value - (ext_call.return_data[0] / 7500 / 100) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(lrcTokenAddress)
                call lrcTokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), 7500 * ext_call.return_data[0] / 7500
                require ext_call.success
                require ext_call.return_data[0]
                depositId++
                emit Deposit(depositId, msg.sender, ext_call.return_data[0] / 7500, 7500 * ext_call.return_data[0] / 7500);
            else:
                require 100 * msg.value > 0
                stor9[address(msg.sender)].field_0 += 100 * msg.value
                stor9[address(msg.sender)].field_256 = block.timestamp
                stor9[address(msg.sender)].field_0 += 100 * msg.value
                if 100 * msg.value:
                    require 100 * msg.value
                    require 750000 * msg.value / 100 * msg.value == 7500
                lrcDeposited += 750000 * msg.value
                ethSent += 100 * msg.value
                call msg.sender with:
                   value (101 * msg.value) - (100 * msg.value / 100) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(lrcTokenAddress)
                call lrcTokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), 750000 * msg.value
                require ext_call.success
                require ext_call.return_data[0]
                depositId++
                emit Deposit(depositId, msg.sender, 100 * msg.value, 750000 * msg.value);
        else:
            if -stor9[address(msg.sender)].field_0 + 20 * 10^18 < 100 * msg.value:
                require -stor9[address(msg.sender)].field_0 + 20 * 10^18 > 0
                stor9[address(msg.sender)].field_0 = 20 * 10^18
                stor9[address(msg.sender)].field_256 = block.timestamp
                stor9[address(msg.sender)].field_0 = 20 * 10^18
                if -stor9[address(msg.sender)].field_0 + 20 * 10^18:
                    require -stor9[address(msg.sender)].field_0 + 20 * 10^18
                    require (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18 / -stor9[address(msg.sender)].field_0 + 20 * 10^18 == 7500
                lrcDeposited = (-7500 * stor9[address(msg.sender)].field_0) + lrcDeposited + 150000 * 10^18
                ethSent = -stor9[address(msg.sender)].field_0 + ethSent + 20 * 10^18
                call msg.sender with:
                   value -stor9[address(msg.sender)].field_0 + msg.value + -(-stor9[address(msg.sender)].field_0 + 20 * 10^18 / 100) + 20 * 10^18 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(lrcTokenAddress)
                call lrcTokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18
                require ext_call.success
                require ext_call.return_data[0]
                depositId++
                emit Deposit(depositId, msg.sender, -stor9[address(msg.sender)].field_0 + 20 * 10^18, (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18);
            else:
                require 100 * msg.value > 0
                stor9[address(msg.sender)].field_0 += 100 * msg.value
                stor9[address(msg.sender)].field_256 = block.timestamp
                stor9[address(msg.sender)].field_0 += 100 * msg.value
                if 100 * msg.value:
                    require 100 * msg.value
                    require 750000 * msg.value / 100 * msg.value == 7500
                lrcDeposited += 750000 * msg.value
                ethSent += 100 * msg.value
                call msg.sender with:
                   value (101 * msg.value) - (100 * msg.value / 100) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(lrcTokenAddress)
                call lrcTokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), 750000 * msg.value
                require ext_call.success
                require ext_call.return_data[0]
                depositId++
                emit Deposit(depositId, msg.sender, 100 * msg.value, 750000 * msg.value);
}

function _fallback() payable {
    if owner == msg.sender:
        require not closed
    else:
        require not closed
        require owner != msg.sender
        require msg.value > 0
        if block.timestamp > depositStopTime:
            require block.timestamp > depositStopTime
            require block.timestamp >= stor9[address(msg.sender)].field_256 + (4320 * 24 * 3600)
            require block.timestamp <= stor9[address(msg.sender)].field_256 + (6480 * 24 * 3600)
            require msg.value <= stor9[address(msg.sender)].field_0
            if msg.value < stor9[address(msg.sender)].field_0:
                if msg.value < eth.balance(this.address):
                    stor9[address(msg.sender)].field_0 -= msg.value
                    stor9[address(msg.sender)].field_0 -= msg.value
                    if msg.value:
                        require msg.value
                        require 7500 * msg.value / msg.value == 7500
                    lrcWithdrawn += 7500 * msg.value
                    ethReceived += msg.value
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(lrcTokenAddress)
                    call lrcTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 7500 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    withdrawId++
                    emit Withdrawal(withdrawId, msg.sender, msg.value, 7500 * msg.value);
                else:
                    stor9[address(msg.sender)].field_0 -= eth.balance(this.address)
                    stor9[address(msg.sender)].field_0 -= eth.balance(this.address)
                    if eth.balance(this.address):
                        require eth.balance(this.address)
                        require 7500 * eth.balance(this.address) / eth.balance(this.address) == 7500
                    lrcWithdrawn += 7500 * eth.balance(this.address)
                    ethReceived += eth.balance(this.address)
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(lrcTokenAddress)
                    call lrcTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 7500 * eth.balance(this.address)
                    require ext_call.success
                    require ext_call.return_data[0]
                    if msg.value - eth.balance(this.address) > 0:
                        call msg.sender with:
                           value msg.value - eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    withdrawId++
                    emit Withdrawal(withdrawId, msg.sender, eth.balance(this.address), 7500 * eth.balance(this.address));
            else:
                if stor9[address(msg.sender)].field_0 < eth.balance(this.address):
                    stor9[address(msg.sender)].field_0 = 0
                    stor9[address(msg.sender)].field_0 = 0
                    if stor9[address(msg.sender)].field_0:
                        require stor9[address(msg.sender)].field_0
                        require 7500 * stor9[address(msg.sender)].field_0 / stor9[address(msg.sender)].field_0 == 7500
                    lrcWithdrawn += 7500 * stor9[address(msg.sender)].field_0
                    ethReceived += stor9[address(msg.sender)].field_0
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(lrcTokenAddress)
                    call lrcTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 7500 * stor9[address(msg.sender)].field_0
                    require ext_call.success
                    require ext_call.return_data[0]
                    if msg.value - stor9[address(msg.sender)].field_0 > 0:
                        call msg.sender with:
                           value msg.value - stor9[address(msg.sender)].field_0 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    withdrawId++
                    emit Withdrawal(withdrawId, msg.sender, stor9[address(msg.sender)].field_0, 7500 * stor9[address(msg.sender)].field_0);
                else:
                    stor9[address(msg.sender)].field_0 -= eth.balance(this.address)
                    stor9[address(msg.sender)].field_0 -= eth.balance(this.address)
                    if eth.balance(this.address):
                        require eth.balance(this.address)
                        require 7500 * eth.balance(this.address) / eth.balance(this.address) == 7500
                    lrcWithdrawn += 7500 * eth.balance(this.address)
                    ethReceived += eth.balance(this.address)
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(lrcTokenAddress)
                    call lrcTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 7500 * eth.balance(this.address)
                    require ext_call.success
                    require ext_call.return_data[0]
                    if msg.value - eth.balance(this.address) > 0:
                        call msg.sender with:
                           value msg.value - eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    withdrawId++
                    emit Withdrawal(withdrawId, msg.sender, eth.balance(this.address), 7500 * eth.balance(this.address));
        else:
            require block.timestamp <= depositStopTime
            if msg.value:
                require msg.value
                require 100 * msg.value / msg.value == 100
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
            if eth.balance(this.address) < ext_call.return_data[0] / 7500:
                if eth.balance(this.address) < ext_call.return_data[0] / 7500:
                    if eth.balance(this.address) < -stor9[address(msg.sender)].field_0 + 20 * 10^18:
                        if eth.balance(this.address) < 100 * msg.value:
                            require eth.balance(this.address) > 0
                            stor9[address(msg.sender)].field_0 += eth.balance(this.address)
                            stor9[address(msg.sender)].field_256 = block.timestamp
                            stor9[address(msg.sender)].field_0 += eth.balance(this.address)
                            if eth.balance(this.address):
                                require eth.balance(this.address)
                                require 7500 * eth.balance(this.address) / eth.balance(this.address) == 7500
                            lrcDeposited += 7500 * eth.balance(this.address)
                            ethSent += eth.balance(this.address)
                            call msg.sender with:
                               value eth.balance(this.address) + msg.value - (eth.balance(this.address) / 100) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(lrcTokenAddress)
                            call lrcTokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), 7500 * eth.balance(this.address)
                            require ext_call.success
                            require ext_call.return_data[0]
                            depositId++
                            emit Deposit(depositId, msg.sender, eth.balance(this.address), 7500 * eth.balance(this.address));
                        else:
                            require 100 * msg.value > 0
                            stor9[address(msg.sender)].field_0 += 100 * msg.value
                            stor9[address(msg.sender)].field_256 = block.timestamp
                            stor9[address(msg.sender)].field_0 += 100 * msg.value
                            if 100 * msg.value:
                                require 100 * msg.value
                                require 750000 * msg.value / 100 * msg.value == 7500
                            lrcDeposited += 750000 * msg.value
                            ethSent += 100 * msg.value
                            call msg.sender with:
                               value (101 * msg.value) - (100 * msg.value / 100) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(lrcTokenAddress)
                            call lrcTokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), 750000 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            depositId++
                            emit Deposit(depositId, msg.sender, 100 * msg.value, 750000 * msg.value);
                    else:
                        if -stor9[address(msg.sender)].field_0 + 20 * 10^18 < 100 * msg.value:
                            require -stor9[address(msg.sender)].field_0 + 20 * 10^18 > 0
                            stor9[address(msg.sender)].field_0 = 20 * 10^18
                            stor9[address(msg.sender)].field_256 = block.timestamp
                            stor9[address(msg.sender)].field_0 = 20 * 10^18
                            if -stor9[address(msg.sender)].field_0 + 20 * 10^18:
                                require -stor9[address(msg.sender)].field_0 + 20 * 10^18
                                require (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18 / -stor9[address(msg.sender)].field_0 + 20 * 10^18 == 7500
                            lrcDeposited = (-7500 * stor9[address(msg.sender)].field_0) + lrcDeposited + 150000 * 10^18
                            ethSent = -stor9[address(msg.sender)].field_0 + ethSent + 20 * 10^18
                            call msg.sender with:
                               value -stor9[address(msg.sender)].field_0 + msg.value + -(-stor9[address(msg.sender)].field_0 + 20 * 10^18 / 100) + 20 * 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(lrcTokenAddress)
                            call lrcTokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            depositId++
                            emit Deposit(depositId, msg.sender, -stor9[address(msg.sender)].field_0 + 20 * 10^18, (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18);
                        else:
                            require 100 * msg.value > 0
                            stor9[address(msg.sender)].field_0 += 100 * msg.value
                            stor9[address(msg.sender)].field_256 = block.timestamp
                            stor9[address(msg.sender)].field_0 += 100 * msg.value
                            if 100 * msg.value:
                                require 100 * msg.value
                                require 750000 * msg.value / 100 * msg.value == 7500
                            lrcDeposited += 750000 * msg.value
                            ethSent += 100 * msg.value
                            call msg.sender with:
                               value (101 * msg.value) - (100 * msg.value / 100) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(lrcTokenAddress)
                            call lrcTokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), 750000 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            depositId++
                            emit Deposit(depositId, msg.sender, 100 * msg.value, 750000 * msg.value);
                else:
                    if ext_call.return_data[0] / 7500 < -stor9[address(msg.sender)].field_0 + 20 * 10^18:
                        if ext_call.return_data[0] / 7500 < 100 * msg.value:
                            require ext_call.return_data[0] / 7500 > 0
                            stor9[address(msg.sender)].field_0 += ext_call.return_data[0] / 7500
                            stor9[address(msg.sender)].field_256 = block.timestamp
                            stor9[address(msg.sender)].field_0 += ext_call.return_data[0] / 7500
                            if ext_call.return_data[0] / 7500:
                                require ext_call.return_data[0] / 7500
                                require 7500 * ext_call.return_data[0] / 7500 / ext_call.return_data[0] / 7500 == 7500
                            lrcDeposited += 7500 * ext_call.return_data[0] / 7500
                            ethSent += ext_call.return_data[0] / 7500
                            call msg.sender with:
                               value (ext_call.return_data[0] / 7500) + msg.value - (ext_call.return_data[0] / 7500 / 100) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(lrcTokenAddress)
                            call lrcTokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), 7500 * ext_call.return_data[0] / 7500
                            require ext_call.success
                            require ext_call.return_data[0]
                            depositId++
                            emit Deposit(depositId, msg.sender, ext_call.return_data[0] / 7500, 7500 * ext_call.return_data[0] / 7500);
                        else:
                            require 100 * msg.value > 0
                            stor9[address(msg.sender)].field_0 += 100 * msg.value
                            stor9[address(msg.sender)].field_256 = block.timestamp
                            stor9[address(msg.sender)].field_0 += 100 * msg.value
                            if 100 * msg.value:
                                require 100 * msg.value
                                require 750000 * msg.value / 100 * msg.value == 7500
                            lrcDeposited += 750000 * msg.value
                            ethSent += 100 * msg.value
                            call msg.sender with:
                               value (101 * msg.value) - (100 * msg.value / 100) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(lrcTokenAddress)
                            call lrcTokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), 750000 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            depositId++
                            emit Deposit(depositId, msg.sender, 100 * msg.value, 750000 * msg.value);
                    else:
                        if -stor9[address(msg.sender)].field_0 + 20 * 10^18 < 100 * msg.value:
                            require -stor9[address(msg.sender)].field_0 + 20 * 10^18 > 0
                            stor9[address(msg.sender)].field_0 = 20 * 10^18
                            stor9[address(msg.sender)].field_256 = block.timestamp
                            stor9[address(msg.sender)].field_0 = 20 * 10^18
                            if -stor9[address(msg.sender)].field_0 + 20 * 10^18:
                                require -stor9[address(msg.sender)].field_0 + 20 * 10^18
                                require (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18 / -stor9[address(msg.sender)].field_0 + 20 * 10^18 == 7500
                            lrcDeposited = (-7500 * stor9[address(msg.sender)].field_0) + lrcDeposited + 150000 * 10^18
                            ethSent = -stor9[address(msg.sender)].field_0 + ethSent + 20 * 10^18
                            call msg.sender with:
                               value -stor9[address(msg.sender)].field_0 + msg.value + -(-stor9[address(msg.sender)].field_0 + 20 * 10^18 / 100) + 20 * 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(lrcTokenAddress)
                            call lrcTokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            depositId++
                            emit Deposit(depositId, msg.sender, -stor9[address(msg.sender)].field_0 + 20 * 10^18, (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18);
                        else:
                            require 100 * msg.value > 0
                            stor9[address(msg.sender)].field_0 += 100 * msg.value
                            stor9[address(msg.sender)].field_256 = block.timestamp
                            stor9[address(msg.sender)].field_0 += 100 * msg.value
                            if 100 * msg.value:
                                require 100 * msg.value
                                require 750000 * msg.value / 100 * msg.value == 7500
                            lrcDeposited += 750000 * msg.value
                            ethSent += 100 * msg.value
                            call msg.sender with:
                               value (101 * msg.value) - (100 * msg.value / 100) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(lrcTokenAddress)
                            call lrcTokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, address(this.address), 750000 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            depositId++
                            emit Deposit(depositId, msg.sender, 100 * msg.value, 750000 * msg.value);
            else:
                if ext_call.return_data[0] / 7500 < -stor9[address(msg.sender)].field_0 + 20 * 10^18:
                    if ext_call.return_data[0] / 7500 < 100 * msg.value:
                        require ext_call.return_data[0] / 7500 > 0
                        stor9[address(msg.sender)].field_0 += ext_call.return_data[0] / 7500
                        stor9[address(msg.sender)].field_256 = block.timestamp
                        stor9[address(msg.sender)].field_0 += ext_call.return_data[0] / 7500
                        if ext_call.return_data[0] / 7500:
                            require ext_call.return_data[0] / 7500
                            require 7500 * ext_call.return_data[0] / 7500 / ext_call.return_data[0] / 7500 == 7500
                        lrcDeposited += 7500 * ext_call.return_data[0] / 7500
                        ethSent += ext_call.return_data[0] / 7500
                        call msg.sender with:
                           value (ext_call.return_data[0] / 7500) + msg.value - (ext_call.return_data[0] / 7500 / 100) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require ext_code.size(lrcTokenAddress)
                        call lrcTokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), 7500 * ext_call.return_data[0] / 7500
                        require ext_call.success
                        require ext_call.return_data[0]
                        depositId++
                        emit Deposit(depositId, msg.sender, ext_call.return_data[0] / 7500, 7500 * ext_call.return_data[0] / 7500);
                    else:
                        require 100 * msg.value > 0
                        stor9[address(msg.sender)].field_0 += 100 * msg.value
                        stor9[address(msg.sender)].field_256 = block.timestamp
                        stor9[address(msg.sender)].field_0 += 100 * msg.value
                        if 100 * msg.value:
                            require 100 * msg.value
                            require 750000 * msg.value / 100 * msg.value == 7500
                        lrcDeposited += 750000 * msg.value
                        ethSent += 100 * msg.value
                        call msg.sender with:
                           value (101 * msg.value) - (100 * msg.value / 100) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require ext_code.size(lrcTokenAddress)
                        call lrcTokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), 750000 * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        depositId++
                        emit Deposit(depositId, msg.sender, 100 * msg.value, 750000 * msg.value);
                else:
                    if -stor9[address(msg.sender)].field_0 + 20 * 10^18 < 100 * msg.value:
                        require -stor9[address(msg.sender)].field_0 + 20 * 10^18 > 0
                        stor9[address(msg.sender)].field_0 = 20 * 10^18
                        stor9[address(msg.sender)].field_256 = block.timestamp
                        stor9[address(msg.sender)].field_0 = 20 * 10^18
                        if -stor9[address(msg.sender)].field_0 + 20 * 10^18:
                            require -stor9[address(msg.sender)].field_0 + 20 * 10^18
                            require (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18 / -stor9[address(msg.sender)].field_0 + 20 * 10^18 == 7500
                        lrcDeposited = (-7500 * stor9[address(msg.sender)].field_0) + lrcDeposited + 150000 * 10^18
                        ethSent = -stor9[address(msg.sender)].field_0 + ethSent + 20 * 10^18
                        call msg.sender with:
                           value -stor9[address(msg.sender)].field_0 + msg.value + -(-stor9[address(msg.sender)].field_0 + 20 * 10^18 / 100) + 20 * 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require ext_code.size(lrcTokenAddress)
                        call lrcTokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        depositId++
                        emit Deposit(depositId, msg.sender, -stor9[address(msg.sender)].field_0 + 20 * 10^18, (-7500 * stor9[address(msg.sender)].field_0) + 150000 * 10^18);
                    else:
                        require 100 * msg.value > 0
                        stor9[address(msg.sender)].field_0 += 100 * msg.value
                        stor9[address(msg.sender)].field_256 = block.timestamp
                        stor9[address(msg.sender)].field_0 += 100 * msg.value
                        if 100 * msg.value:
                            require 100 * msg.value
                            require 750000 * msg.value / 100 * msg.value == 7500
                        lrcDeposited += 750000 * msg.value
                        ethSent += 100 * msg.value
                        call msg.sender with:
                           value (101 * msg.value) - (100 * msg.value / 100) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require ext_code.size(lrcTokenAddress)
                        call lrcTokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), 750000 * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        depositId++
                        emit Deposit(depositId, msg.sender, 100 * msg.value, 750000 * msg.value);
}



}
