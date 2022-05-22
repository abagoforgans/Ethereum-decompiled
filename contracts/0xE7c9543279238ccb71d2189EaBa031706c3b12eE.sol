contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
uint256 stor2;
mapping of uint256 ticketsavailable;
uint256 ticket1price;
uint256 tickets10price;
uint256 tickets100price;
uint256 tickets1kprice;
uint256 tickets10kprice;
uint256 tickets100kprice;
address contrp3dAddress;
uint256 stor11;

function tickets10kprice() {
    return tickets10kprice
}

function contrp3d() {
    return contrp3dAddress
}

function tickets100kprice() {
    return tickets100kprice
}

function tickets100price() {
    return tickets100price
}

function ticketsavailable(address arg1) {
    return ticketsavailable[arg1]
}

function tickets10price() {
    return tickets10price
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function tickets1kprice() {
    return tickets1kprice
}

function ticket1price() {
    return ticket1price
}

function exit() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function buy1ticket() payable {
    require msg.value >= ticket1price
    ticketsavailable[msg.sender]++
    emit onTicketPurchase(msg.sender, 1);
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function buy10tickets() payable {
    require msg.value >= tickets10price
    ticketsavailable[msg.sender] += 10
    emit onTicketPurchase(msg.sender, 10);
}

function buy1ktickets() payable {
    require msg.value >= tickets1kprice
    ticketsavailable[msg.sender] += 1000
    emit onTicketPurchase(msg.sender, 1000);
}

function buy100tickets() payable {
    require msg.value >= tickets100price
    ticketsavailable[msg.sender] += 100
    emit onTicketPurchase(msg.sender, 100);
}

function buy10ktickets() payable {
    require msg.value >= tickets10kprice
    ticketsavailable[msg.sender] += 10000
    emit onTicketPurchase(msg.sender, 10000);
}

function buy100ktickets() payable {
    require msg.value >= tickets100kprice
    ticketsavailable[msg.sender] += 100000
    emit onTicketPurchase(msg.sender, 100000);
}

function sub_0008c9da(?) {
    require msg.sender == owner
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function harvestabledivs() {
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.dividendsOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function Expand() {
    require 1 <= ticketsavailable[msg.sender]
    stor2 = eth.balance(this.address) / 100
    call owner with:
       value eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0xf088d547 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    ticketsavailable[msg.sender]--
}

function onlyHarvest(uint256 arg1) payable {
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.dividendsOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor11 = ext_call.return_data[0]
    require msg.value > 0
    require arg1 <= 2 * msg.value
    require arg1 < stor11
    require 2 <= ticketsavailable[msg.sender]
    stor2 = arg1
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    ticketsavailable[msg.sender] -= 2
    call msg.sender with:
       value stor2 wei
         gas 2300 * is_zero(value) wei
    emit onHarvest(msg.sender, stor2);
}

function ExpandandHarvest(uint256 arg1) payable {
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.dividendsOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor11 = ext_call.return_data[0]
    require msg.value > 0
    require arg1 <= 2 * msg.value
    require arg1 < stor11
    require 1 <= ticketsavailable[msg.sender]
    stor2 = eth.balance(this.address) / 100
    call owner with:
       value eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0xf088d547 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor2 = arg1
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    ticketsavailable[msg.sender]--
    call msg.sender with:
       value stor2 wei
         gas 2300 * is_zero(value) wei
    emit onHarvest(msg.sender, stor2);
    emit 0x615fc9f6: stor2
}



}
