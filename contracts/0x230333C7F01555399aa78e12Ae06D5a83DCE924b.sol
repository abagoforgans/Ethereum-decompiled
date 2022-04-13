contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor6 = 0
    stor7 = 0
    require not msg.value
    require code.data[2443 len 20]
    require code.data[2475 len 20]
    stor0 = code.data[2443 len 20]
    stor1 = code.data[2475 len 20]
    stor3 = block.timestamp
    stor4 = block.timestamp + (1440 * 24 * 3600)
    return code.data[218 len 2213]
}



// =====================  Runtime code  =====================


const sub_4bd9844a(?) = (12960 * 24 * 3600)

const sub_5afbc4a8(?) = 10^6

const DEPOSIT_PERIOD = (1440 * 24 * 3600)


address lrcTokenAddress;
address owner;
uint256 lrcDeposited;
uint256 depositStartTime;
uint256 depositStopTime;
mapping of struct stor5;
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

function drain() payable {
    require owner == msg.sender
    require eth.balance(this.address) > 0
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawLRC() payable {
    require owner != msg.sender
    require lrcDeposited > 0
    require stor5[address(msg.sender)].field_0 > 0
    require block.timestamp >= stor5[address(msg.sender)].field_256 + (12960 * 24 * 3600)
    require ext_code.size(lrcTokenAddress)
    call lrcTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require lrcDeposited
    if ext_call.return_data[0] / lrcDeposited:
        require ext_call.return_data[0] / lrcDeposited
        require stor5[address(msg.sender)].field_0 * ext_call.return_data[0] / lrcDeposited / ext_call.return_data[0] / lrcDeposited == stor5[address(msg.sender)].field_0
    require stor5[address(msg.sender)].field_0 * ext_call.return_data[0] / lrcDeposited > 0
    stor5[address(msg.sender)].field_0 = 0
    stor5[address(msg.sender)].field_256 = 0
    lrcDeposited += -1 * stor5[address(msg.sender)].field_0 * ext_call.return_data[0] / lrcDeposited
    require ext_code.size(lrcTokenAddress)
    call lrcTokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, stor5[address(msg.sender)].field_0 * ext_call.return_data[0] / lrcDeposited
    require ext_call.success
    require ext_call.return_data[0]
    withdrawId++
    emit Withdrawal(withdrawId, msg.sender, stor5[address(msg.sender)].field_0 * ext_call.return_data[0] / lrcDeposited);
}

function depositLRC() payable {
    require owner != msg.sender
    require msg.value > 0
    require block.timestamp <= depositStopTime
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
    if msg.value:
        require msg.value
        require 10^6 * msg.value / msg.value == 10^6
    if 10^6 * msg.value < ext_call.return_data[0]:
        if 10^6 * msg.value < ext_call.return_data[0]:
            stor5[address(msg.sender)].field_0 += 10^6 * msg.value
            stor5[address(msg.sender)].field_256 = block.timestamp
            lrcDeposited += 10^6 * msg.value
            require ext_code.size(lrcTokenAddress)
            call lrcTokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), 10^6 * msg.value
            require ext_call.success
            require ext_call.return_data[0]
            depositId++
            emit Deposit(depositId, msg.sender, 10^6 * msg.value);
        else:
            stor5[address(msg.sender)].field_0 += ext_call.return_data[0]
            stor5[address(msg.sender)].field_256 = block.timestamp
            lrcDeposited += ext_call.return_data[0]
            require ext_code.size(lrcTokenAddress)
            call lrcTokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            depositId++
            emit Deposit(depositId, msg.sender, ext_call.return_data[0]);
    else:
        stor5[address(msg.sender)].field_0 += ext_call.return_data[0]
        stor5[address(msg.sender)].field_256 = block.timestamp
        lrcDeposited += ext_call.return_data[0]
        require ext_code.size(lrcTokenAddress)
        call lrcTokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        depositId++
        emit Deposit(depositId, msg.sender, ext_call.return_data[0]);
}

function _fallback() payable {
    require owner != msg.sender
    require owner != msg.sender
    if block.timestamp > depositStopTime:
        require lrcDeposited > 0
        require stor5[address(msg.sender)].field_0 > 0
        require block.timestamp >= stor5[address(msg.sender)].field_256 + (12960 * 24 * 3600)
        require ext_code.size(lrcTokenAddress)
        call lrcTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require lrcDeposited
        if ext_call.return_data[0] / lrcDeposited:
            require ext_call.return_data[0] / lrcDeposited
            require stor5[address(msg.sender)].field_0 * ext_call.return_data[0] / lrcDeposited / ext_call.return_data[0] / lrcDeposited == stor5[address(msg.sender)].field_0
        require stor5[address(msg.sender)].field_0 * ext_call.return_data[0] / lrcDeposited > 0
        stor5[address(msg.sender)].field_0 = 0
        stor5[address(msg.sender)].field_256 = 0
        lrcDeposited += -1 * stor5[address(msg.sender)].field_0 * ext_call.return_data[0] / lrcDeposited
        require ext_code.size(lrcTokenAddress)
        call lrcTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, stor5[address(msg.sender)].field_0 * ext_call.return_data[0] / lrcDeposited
        require ext_call.success
        require ext_call.return_data[0]
        withdrawId++
        emit Withdrawal(withdrawId, msg.sender, stor5[address(msg.sender)].field_0 * ext_call.return_data[0] / lrcDeposited);
    else:
        require msg.value > 0
        require block.timestamp <= depositStopTime
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
        if msg.value:
            require msg.value
            require 10^6 * msg.value / msg.value == 10^6
        if 10^6 * msg.value < ext_call.return_data[0]:
            if 10^6 * msg.value < ext_call.return_data[0]:
                stor5[address(msg.sender)].field_0 += 10^6 * msg.value
                stor5[address(msg.sender)].field_256 = block.timestamp
                lrcDeposited += 10^6 * msg.value
                require ext_code.size(lrcTokenAddress)
                call lrcTokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), 10^6 * msg.value
                require ext_call.success
                require ext_call.return_data[0]
                depositId++
                emit Deposit(depositId, msg.sender, 10^6 * msg.value);
            else:
                stor5[address(msg.sender)].field_0 += ext_call.return_data[0]
                stor5[address(msg.sender)].field_256 = block.timestamp
                lrcDeposited += ext_call.return_data[0]
                require ext_code.size(lrcTokenAddress)
                call lrcTokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                depositId++
                emit Deposit(depositId, msg.sender, ext_call.return_data[0]);
        else:
            stor5[address(msg.sender)].field_0 += ext_call.return_data[0]
            stor5[address(msg.sender)].field_256 = block.timestamp
            lrcDeposited += ext_call.return_data[0]
            require ext_code.size(lrcTokenAddress)
            call lrcTokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            depositId++
            emit Deposit(depositId, msg.sender, ext_call.return_data[0]);
}



}
