contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 977]




// =====================  Runtime code  =====================


address organizerAddress;
mapping of uint256 registrantsPaid;
uint256 numRegistrants;
uint256 quota;

function registrantsPaid(address arg1) {
    return registrantsPaid[arg1]
}

function organizer() {
    return organizerAddress
}

function quota() {
    return quota
}

function numRegistrants() {
    return numRegistrants
}

function destroy() {
    if organizerAddress != msg.sender:
    selfdestruct(organizerAddress)
}

function _fallback() payable {
    revert
}

function Conference() {
    organizerAddress = msg.sender
    quota = 100
    numRegistrants = 0
}

function changeQuota(uint256 arg1) {
    if organizerAddress == msg.sender:
        quota = arg1
}

function buyTicket() payable {
    require numRegistrants < quota
    registrantsPaid[address(msg.sender)] = msg.value
    numRegistrants++
    emit Deposit(msg.sender, msg.value);
}

function refundTicket(address arg1, uint256 arg2) {
    if organizerAddress == msg.sender:
        if arg2 == registrantsPaid[address(arg1)]:
            if eth.balance(this.address) >= arg2:
                call arg1 with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Refund(address(arg1), arg2);
                registrantsPaid[address(arg1)] = 0
                numRegistrants--
}



}
