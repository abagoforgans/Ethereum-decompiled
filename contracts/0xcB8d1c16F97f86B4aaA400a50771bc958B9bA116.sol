contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1110]




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

function kill() {
    require not eth.balance(this.address)
    selfdestruct(stor0)
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

function init() payable {
    if not stor3:
        stor0 = msg.sender
        minimumDeposit = 10^17
        stor3 = 0
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



}
