contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor2;
uint256 price;
array of address tickets;
address sub_b3453342Address;

function tickets(uint256 arg1) {
    require arg1 < tickets.length
    mem[128] = stor[sha3((2 * arg1) + ('name', 'tickets', 4) + 1)].field_0
    idx = 128
    s = 0
    while stor[(2 * arg1) + ('name', 'tickets', 4) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'tickets', 4) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return tickets[arg1].field_0, 
           Array(len=stor[(2 * arg1) + ('name', 'tickets', 4) + 1].length, data=mem[128 len stor[(2 * arg1) + ('name', 'tickets', 4) + 1].length])
}

function owner() {
    return owner
}

function getNumberOfTickets() {
    return tickets.length
}

function getPrice() {
    return price
}

function sub_b3453342(?) {
    return sub_b3453342Address
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0, 'Price must be larger then 0'
    price = arg1
}

function buyTicket(string arg1) {
    require ext_code.size(sub_b3453342Address)
    call sub_b3453342Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), price * 10^stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    tickets.length++
    tickets[tickets.length].field_0 = msg.sender
    stor[sha3((2 * tickets.length) + ('name', 'tickets', 4) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    emit 0x9d3d1943: Array(len=arg1.length, data=arg1[all]), msg.sender
}

function withdraw() {
    require msg.sender == owner
    require ext_code.size(sub_b3453342Address)
    call sub_b3453342Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x594f7013: owner, ext_call.return_data[0]
    require ext_code.size(sub_b3453342Address)
    call sub_b3453342Address.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}



}
