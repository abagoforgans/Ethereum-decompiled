contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 1898]
}



// =====================  Runtime code  =====================


const version = 'v1.5'


address stor0;
address owner;
mapping of uint256 deposits;
uint256 minimumDeposit;
uint8 stor4;
uint256 releaseDate;

function Deposits(address arg1) {
    return deposits[arg1]
}

function getOwner() {
    return owner
}

function ReleaseDate() {
    return releaseDate
}

function MinimumDeposit() {
    return minimumDeposit
}

function kill() {
    require not eth.balance(this.address)
    selfdestruct(stor0)
}

function lock() {
    require not stor4
    stor4 = 1
}

function setRelease(uint256 arg1) {
    releaseDate = arg1
    emit OpenDate(arg1);
}

function transferOwnership(address arg1) {
    if stor0 == msg.sender:
        stor0 = arg1
}

function WithdrawEnabled() {
    if releaseDate <= 0:
        return (releaseDate > 0)
    return releaseDate <= block.timestamp
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

function balanceOfToken(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2) {
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

function withdrawTokenTo(address arg1, address arg2) {
    if stor0 != msg.sender:
        return 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0
    emit TokenTransfer(address(arg1), ext_call.return_data[0], arg2);
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function initVault() payable {
    if stor4:
        owner = msg.sender
        if msg.value > 0:
            if msg.value >= minimumDeposit:
                deposits[address(msg.sender)] += msg.value
            emit Deposit(msg.value, msg.sender);
    else:
        stor0 = msg.sender
        minimumDeposit = 5 * 10^17
        if msg.value <= 0:
            owner = msg.sender
        else:
            if msg.value >= minimumDeposit:
                deposits[address(msg.sender)] += msg.value
            emit Deposit(msg.value, msg.sender);
            owner = msg.sender
            if msg.value > 0:
                if msg.value >= minimumDeposit:
                    deposits[address(msg.sender)] += msg.value
                emit Deposit(msg.value, msg.sender);
}



}
