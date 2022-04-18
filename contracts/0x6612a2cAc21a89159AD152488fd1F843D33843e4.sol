contract main {


// =======================  Init code  ======================


uint8 stor3;

function _fallback() payable {
    stor3 = 0
    require not msg.value
    return code.data[41 len 1590]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 deposits;
uint256 minimumDeposit;
uint8 stor3;
uint256 releaseDate;

function Deposits(address arg1) {
    return deposits[arg1]
}

function ReleaseDate() {
    return releaseDate
}

function MinimumDeposit() {
    return minimumDeposit
}

function lock() {
    stor3 = 1
}

function SetReleaseDate(uint256 arg1) {
    releaseDate = arg1
}

function transferOwnership(address arg1) {
    if stor0 == msg.sender:
        emit TransferOwnership(stor0, arg1);
        stor0 = arg1
}

function deposit() payable {
    if msg.value > 0:
        if msg.value >= minimumDeposit:
            deposits[address(msg.sender)] += msg.value
        emit Deposit(msg.value, msg.sender);
}

function _fallback() payable {
    if msg.value > 0:
        if msg.value >= minimumDeposit:
            deposits[address(msg.sender)] += msg.value
        emit Deposit(msg.value, msg.sender);
}

function initWallet() payable {
    if not stor3:
        stor0 = msg.sender
        minimumDeposit = 25 * 10^16
        if msg.value > 0:
            if msg.value >= minimumDeposit:
                deposits[address(msg.sender)] += msg.value
            emit Deposit(msg.value, msg.sender);
}

function withdrawTo(address arg1, uint256 arg2) {
    if stor0 == msg.sender:
        if releaseDate > 0:
            if releaseDate <= block.timestamp:
                if deposits[address(msg.sender)] > 0:
                    if arg2 <= deposits[address(msg.sender)]:
                        call arg1 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Withdrawal(arg2, arg1);
}

function withdraw(uint256 arg1) payable {
    if stor0 == msg.sender:
        if releaseDate > 0:
            if releaseDate <= block.timestamp:
                if deposits[address(msg.sender)] > 0:
                    if arg1 <= deposits[address(msg.sender)]:
                        call msg.sender with:
                           value arg1 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Withdrawal(arg1, msg.sender);
}

function withdrawTokenTo(address arg1, address arg2, uint256 arg3) payable {
    if stor0 == msg.sender:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] >= arg3:
            if arg3 > 0:
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg2), arg3
                require ext_call.success
}

function withdrawToken(address arg1) payable {
    if stor0 == msg.sender:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if stor0 == msg.sender:
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
}



}
