contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = 500
    stor2 = 0
    return code.data[45 len 640]
}



// =====================  Runtime code  =====================


address organizerAddress;
mapping of uint256 registrantsPaid;
uint256 numRegistrants;
uint256 quota;

function registrantsPaid(address arg1) payable {
    return registrantsPaid[arg1]
}

function organizer() payable {
    return organizerAddress
}

function quota() payable {
    return quota
}

function numRegistrants() payable {
    return numRegistrants
}

function destroy() payable {
    if organizerAddress != msg.sender:
    selfdestruct(organizerAddress)
}

function _fallback() payable {
  stop
}

function changeQuota(uint256 arg1) payable {
    if msg.sender == organizerAddress:
        quota = arg1
}

function buyTicket() payable {
    if numRegistrants >= quota:
        return 0
    registrantsPaid[address(msg.sender)] = msg.value
    numRegistrants++
    emit Deposit(address(msg.sender), msg.value);
    return 1
}

function refundTicket(address arg1, uint256 arg2) payable {
    if msg.sender == organizerAddress:
        if arg2 == registrantsPaid[address(arg1)]:
            if eth.balance(this.address) >= arg2:
                call arg1 with:
                   value arg2 wei
                     gas 0 wei
                registrantsPaid[address(arg1)] = 0
                numRegistrants--
                emit Refund(address(arg1), arg2);
}



}
