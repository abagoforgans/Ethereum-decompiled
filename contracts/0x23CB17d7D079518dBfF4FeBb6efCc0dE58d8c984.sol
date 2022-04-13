contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - getAllTickets()
#
const decimalUnits = 16

const initialSupply = 2000 * 10^18


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint8 stor10;
mapping of uint256 rewardPoints;
mapping of uint8 stor12;
mapping of uint8 stor13;
array of struct oNETIMESOLD;
array of uint256 tokenName;
array of uint256 tokenSymbol;
mapping of struct tickets;
mapping of uint8 stor18;
array of struct customer_tickets;
array of address ticket_addresses;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function ticket_addresses(uint256 arg1) {
    require arg1 < ticket_addresses.length
    return address(ticket_addresses[arg1])
}

function decimals() {
    return decimals
}

function sellPrice() {
    return sellPrice
}

function customer_tickets(address arg1, uint256 arg2) {
    require arg2 < customer_tickets[arg1].field_0
    return address(customer_tickets[arg1][arg2].field_0)
}

function standard() {
    return standard[0 len standard.length]
}

function tokenName() {
    return tokenName[0 len tokenName.length]
}

function tickets(address arg1) {
    return tickets[arg1].field_0, address(tickets[arg1].field_256), tickets[arg1].field_512
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function tokenSymbol() {
    return tokenSymbol[0 len tokenSymbol.length]
}

function rewardPoints(address arg1) {
    return rewardPoints[arg1]
}

function oneTimeSold(address arg1) {
    return bool(stor13[arg1])
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function ticket_address_added(address arg1) {
    return bool(stor18[arg1])
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor10[arg1])
}

function ONETIMESOLD(uint256 arg1) {
    require arg1 < oNETIMESOLD.length
    return address(oNETIMESOLD[arg1].field_0)
}

function oneTimeTickets(address arg1) {
    return bool(stor12[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor10[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function buy() payable {
    require buyPrice
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[address(this.address)] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor10[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function addNewTicket(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    require not stor18[address(arg1)]
    if arg4:
        stor12[address(arg1)] = 1
    tickets[address(arg1)].field_0 = arg2
    address(tickets[address(arg1)].field_256) = arg1
    tickets[address(arg1)].field_512 = arg3
    stor18[address(arg1)] = 1
    ticket_addresses.length++
    if not ticket_addresses.length <= ticket_addresses.length + 1:
        idx = ticket_addresses.length + 1
        while ticket_addresses.length > idx:
            uint256(ticket_addresses[idx]) = 0
            idx = idx + 1
            continue 
    address(ticket_addresses[ticket_addresses.length]) = arg1
}

function getONETIMESOLD() {
    if not oNETIMESOLD.length:
        mem[(32 * oNETIMESOLD.length) + 160] = 32
        mem[(32 * oNETIMESOLD.length) + 192] = oNETIMESOLD.length
        mem[(32 * oNETIMESOLD.length) + 224 len floor32(oNETIMESOLD.length)] = mem[160 len floor32(oNETIMESOLD.length)]
        return memory
          from (32 * oNETIMESOLD.length) + 160
           len (96 * oNETIMESOLD.length) + 64
    mem[160] = address(oNETIMESOLD.field_0)
    idx = 160
    s = 0
    while (32 * oNETIMESOLD.length) + 128 > idx:
        mem[idx + 32] = address(oNETIMESOLD[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * oNETIMESOLD.length) + 224 len floor32(oNETIMESOLD.length)] = mem[160 len floor32(oNETIMESOLD.length)]
    return Array(len=oNETIMESOLD.length, data=mem[160 len floor32(oNETIMESOLD.length)], mem[(32 * oNETIMESOLD.length) + floor32(oNETIMESOLD.length) + 224 len (32 * oNETIMESOLD.length) - floor32(oNETIMESOLD.length)]), 
}

function getMyTicketAddresses(address arg1) {
    if not customer_tickets[address(arg1)].field_0:
        mem[(32 * customer_tickets[address(arg1)].field_0) + 160] = 32
        mem[(32 * customer_tickets[address(arg1)].field_0) + 192] = customer_tickets[address(arg1)].field_0
        mem[(32 * customer_tickets[address(arg1)].field_0) + 224 len floor32(customer_tickets[address(arg1)].field_0)] = mem[160 len floor32(customer_tickets[address(arg1)].field_0)]
        return memory
          from (32 * customer_tickets[address(arg1)].field_0) + 160
           len (96 * customer_tickets[address(arg1)].field_0) + 64
    mem[160] = address(customer_tickets[address(arg1)].field_0)
    idx = 160
    s = 0
    while (32 * customer_tickets[address(arg1)].field_0) + 128 > idx:
        mem[idx + 32] = address(customer_tickets[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * customer_tickets[address(arg1)].field_0) + 224 len floor32(customer_tickets[address(arg1)].field_0)] = mem[160 len floor32(customer_tickets[address(arg1)].field_0)]
    return Array(len=customer_tickets[address(arg1)].field_0, data=mem[160 len floor32(customer_tickets[address(arg1)].field_0)], mem[(32 * customer_tickets[address(arg1)].field_0) + floor32(customer_tickets[address(arg1)].field_0) + 224 len (32 * customer_tickets[address(arg1)].field_0) - floor32(customer_tickets[address(arg1)].field_0)]), 
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor10[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if stor18[address(arg1)]:
        if arg2 >= tickets[address(arg1)].field_0:
            require not stor13[address(arg1)]
            if not stor12[address(arg1)]:
                customer_tickets[address(msg.sender)].field_0++
                if not customer_tickets[address(msg.sender)].field_0 <= customer_tickets[address(msg.sender)].field_0 + 1:
                    idx = customer_tickets[address(msg.sender)].field_0 + 1
                    while customer_tickets[address(msg.sender)].field_0 > idx:
                        customer_tickets[address(msg.sender)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                stor13[address(arg1)] = 1
                oNETIMESOLD.length++
                if not oNETIMESOLD.length <= oNETIMESOLD.length + 1:
                    idx = oNETIMESOLD.length + 1
                    while oNETIMESOLD.length > idx:
                        oNETIMESOLD[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                address(oNETIMESOLD[oNETIMESOLD.length].field_0) = arg1
                customer_tickets[address(msg.sender)].field_0++
                if not customer_tickets[address(msg.sender)].field_0 <= customer_tickets[address(msg.sender)].field_0 + 1:
                    idx = customer_tickets[address(msg.sender)].field_0 + 1
                    while customer_tickets[address(msg.sender)].field_0 > idx:
                        customer_tickets[address(msg.sender)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            address(customer_tickets[address(msg.sender)][customer_tickets[address(msg.sender)].field_0].field_0) = arg1
            rewardPoints[address(msg.sender)] += tickets[address(arg1)].field_512
            emit Allocate(address(msg.sender), address(arg1), arg2, tickets[address(arg1)].field_0, arg2 >= tickets[address(arg1)].field_0);
}

function transferTicket(address arg1, address arg2) {
    mem[0] = msg.sender
    idx = 0
    s = 0
    while idx < customer_tickets[address(msg.sender)].field_0:
        require idx < customer_tickets[address(msg.sender)].field_0
        if address(customer_tickets[address(msg.sender)][idx].field_0) != arg2:
            require idx < customer_tickets[address(msg.sender)].field_0
            require idx < customer_tickets[address(msg.sender)].field_0
            mem[(32 * idx) + 160] = address(customer_tickets[address(msg.sender)][idx].field_0)
            mem[0] = msg.sender
            mem[32] = 19
            idx = idx + 1
            s = s
            continue 
        if s:
            require idx < customer_tickets[address(msg.sender)].field_0
            require idx < customer_tickets[address(msg.sender)].field_0
            mem[(32 * idx) + 160] = address(customer_tickets[address(msg.sender)][idx].field_0)
            mem[0] = msg.sender
            mem[32] = 19
            idx = idx + 1
            s = s
            continue 
        customer_tickets[address(arg1)].field_0++
        if not customer_tickets[address(arg1)].field_0 <= customer_tickets[address(arg1)].field_0 + 1:
            mem[0] = sha3(address(arg1), 19)
            s = sha3(mem[0]) + customer_tickets[address(arg1)].field_0 + 1
            while sha3(sha3(address(arg1), 19)) + customer_tickets[address(arg1)].field_0 > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 19
                s = s + 1
                continue 
        address(customer_tickets[address(arg1)][customer_tickets[address(arg1)].field_0].field_0) = arg2
        mem[0] = msg.sender
        mem[32] = 19
        idx = idx + 1
        s = 1
        continue 
    if not customer_tickets[address(msg.sender)].field_0:
        idx = 0
        while customer_tickets[address(msg.sender)].field_0 > idx:
            address(customer_tickets[address(msg.sender)][idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 160
        while (32 * customer_tickets[address(msg.sender)].field_0) + 160 > idx:
            address(customer_tickets[address(msg.sender)][s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * customer_tickets[address(msg.sender)].field_0) + 31) >> 5
        while customer_tickets[address(msg.sender)].field_0 > idx:
            address(customer_tickets[address(msg.sender)][idx].field_0) = 0
            idx = idx + 1
            continue 
}



}
