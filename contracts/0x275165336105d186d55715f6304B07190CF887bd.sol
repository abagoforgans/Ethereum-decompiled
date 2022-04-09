contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor7;
address stor8;
array of uint256 stor9;

function _fallback() {
    mem[96 len -1568] = code.data[2062 len -1568]
    mem[64] = -1472
    stor8 = msg.sender
    stor0 = mem[127 len 1]
    stor1 = mem[128]
    stor2 = mem[191 len 1]
    stor9[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor3 = stor0 * stor1 / 100 * stor2
    require uint8(stor0 - 1)
    stor4 = (stor0 * stor1) - (stor0 * stor1 / 100 * stor2) / uint8(stor0 - 1)
    stor7 = 0
    return code.data[494 len 1568]
}



// =====================  Runtime code  =====================


const getContractValue = eth.balance(this.address)


uint8 ticketSupply;
uint256 ticketCost;
uint8 houseEdge;
uint256 stor4;
array of address stor5;
mapping of uint8 stor6;
uint256 ticketsSold;
address stor8;
array of struct stor9;

function ticketCost() {
    return ticketCost
}

function ticketSupply() {
    return ticketSupply
}

function ticketsSold() {
    return ticketsSold
}

function houseEdge() {
    return houseEdge
}

function _fallback() payable {
    revert
}

function buyTicket() payable {
    if stor8 == msg.sender:
        return 0
    if ticketCost != msg.value:
        return 0
    if 1 == bool(stor6[address(msg.sender)]):
        return 0
    ticketsSold++
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            uint256(stor5[idx]) = 0
            idx = idx + 1
            continue 
    address(stor5[stor5.length]) = msg.sender
    stor6[address(msg.sender)] = 1
    emit TicketBought(msg.value, msg.sender, ticketsSold);
    if ticketsSold >= ticketSupply:
        mem[128] = 0
        mem[96] = uint256(stor9.field_0)
        idx = 96
        s = 0
        while stor9.length + 96 > idx + 32:
            mem[idx + 32] = stor9[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[stor9.length + 96] = block.number
        hash = sha256hash(mem[96 len stor9.length + 32]) 
        require sha256hash.result
        require ticketSupply
        idx = 0
        while idx < stor5.length:
            mem[0] = address(stor5[idx])
            mem[32] = 6
            stor6[address(stor5[idx])] = 0
            if idx != uint8(uint8(hash) % ticketSupply):
                require idx < stor5.length
                call address(stor5[idx]) with:
                   value stor4 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require idx < stor5.length
                mem[0] = 5
                mem[96] = stor4
                emit Winner(stor4, address(stor5[idx]));
            idx = idx + 1
            continue 
        emit Winner(eth.balance(this.address), stor8);
        call stor8 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        ticketsSold = 0
        stor5.length = 0
        idx = 0
        while stor5.length > idx:
            uint256(stor5[idx]) = 0
            idx = idx + 1
            continue 
    return 1
}



}
