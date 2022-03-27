contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor3 = 100
    stor2 = 0
    return code.data[69 len 522]
}



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

function changeQuota(uint256 arg1) {
    if organizerAddress == msg.sender:
        quota = arg1
}

function buyTicket() {
    require numRegistrants < quota
    registrantsPaid[address(msg.sender)] = msg.value
    numRegistrants++
    emit Deposit(msg.sender, msg.value);
}



}
