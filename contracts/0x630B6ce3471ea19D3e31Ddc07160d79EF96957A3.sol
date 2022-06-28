contract main {




// =====================  Runtime code  =====================


address stor0;
address owner;
uint256 stor1;
mapping of uint256 sub_49d48739;
uint256 minDeposit;

function minDeposit() {
    return minDeposit
}

function sub_49d48739(?) {
    return sub_49d48739[arg1]
}

function owner() {
    return address(owner)
}

function close() {
    if stor0 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function change(address arg1) {
    if msg.sender == stor0:
        stor0 = arg1
}

function deposit() payable {
    if msg.value >= minDeposit:
        sub_49d48739[msg.sender] += msg.value
}

function sub_40224e01(?) payable {
    require arg1 > minDeposit
    require msg.value >= arg1
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    minDeposit = arg1
    if msg.value >= minDeposit:
        sub_49d48739[msg.sender] += msg.value
}

function withdraw(uint256 arg1) {
    if sub_49d48739[msg.sender] > 0:
        if arg1 <= sub_49d48739[msg.sender]:
            sub_49d48739[msg.sender] -= arg1
            call msg.sender with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
