contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[57 len 1462]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 deposits;
uint256 minimumDeposit;
uint8 stor3;
uint256 releaseDate;
address owner;

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
    stor3 = 1
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

function withdrawTokenTo(address arg1, address arg2, uint256 arg3) {
    if stor0 != msg.sender:
        return 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function initWallet() payable {
    if not stor3:
        stor0 = msg.sender
        minimumDeposit = 10^18
        stor3 = 0
        if msg.value > 0:
            if msg.value >= minimumDeposit:
                deposits[address(msg.sender)] += msg.value
            emit Deposit(msg.value, msg.sender);
    owner = msg.sender
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



}
