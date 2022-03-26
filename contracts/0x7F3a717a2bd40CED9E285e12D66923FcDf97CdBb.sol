contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 0
    stor3 = 500
    return code.data[45 len 482]
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
    if msg.sender == organizerAddress:
        quota = arg1
}

function buyTicket() {
    if numRegistrants >= quota:
        return 0
    registrantsPaid[address(msg.sender)] = msg.value
    numRegistrants++
    emit Deposit(msg.sender, msg.value);
    return 1
}



}
