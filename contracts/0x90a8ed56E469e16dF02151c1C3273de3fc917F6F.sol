contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
array of struct stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint8 stor24;

function _fallback() payable {
    stor2 = 1
    stor3 = 10^15
    stor4 = 5
    stor5 = 168 * 24 * 3600
    stor6 = 10000
    stor7 = 10
    stor8 = 10000
    stor9 = 600063
    stor10 = 240025
    stor11 = 96010
    stor12 = 38404
    stor13 = 15362
    stor14 = 6145
    stor15 = 2458
    stor16 = 983
    stor17 = 393
    stor18 = 157
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor20 = block.timestamp
    idx = 405972 * 3600
    while idx < block.timestamp:
        idx = idx + (168 * 24 * 3600)
        continue 
    stor21 = idx
    stor19.length = 0
    if not stor19.length <= 0:
        idx = 0
        while 2 * stor19.length > idx:
            stor19[idx].field_0 = 0
            stor19[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor22 = 0
    stor23 = 0
    stor24 = 0
    return code.data[308 len 4171]
}



// =====================  Runtime code  =====================


#
#  - PrepareDraw()
#  - Draw()
#
const Information = Array(len=28, data=mem[224])


address stor0;
array of uint256 stor1;
uint8 stor2;
uint256 ticketPrice;
uint256 stor4;
uint256 stor6;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint8 stor24;
mapping of uint256 balances;
array of address stor39080659448442619194843949105668002653646118398737414248826072520895489701536;

function ticketPrice() payable {
    return ticketPrice
}

function balances(address arg1) payable {
    return balances[arg1]
}

function contractEnabled() payable {
    return bool(stor2)
}

function Details() payable {
    return stor20, stor21, stor22, stor19
}

function OwnerCloseContract() payable {
    require msg.sender == stor0
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require bool(ext_call.success) != 0
    require stor2
    stor2 = 0
}

function OwnerGetFee() payable {
    require msg.sender == stor0
    if msg.value <= 0:
        call stor0 with:
           value stor1.length wei
             gas 0 wei
        require bool(ext_call.success) != 0
    else:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require bool(ext_call.success) != 0
        call stor0 with:
           value stor1.length wei
             gas 0 wei
    stor1.length = 0
}

function GetPrize() payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require bool(ext_call.success) != 0
    if not stor2:
        idx = 0
        while idx < stor19:
            mem[0] = 19
            if address(stor5666[idx]) == msg.sender:
                require idx < stor19
                require uint256(stor[code.data[4139 len 32] + (2 * idx)]) > 0
                require idx < stor19
                call msg.sender with:
                   value ticketPrice * uint256(stor[code.data[4139 len 32] + (2 * idx)]) wei
                     gas 0 wei
                require ext_call.success
                require idx < stor19
                stor22 -= uint256(stor[code.data[4139 len 32] + (2 * idx)])
                address(stor5666[idx]) = 0
                mem[0] = 19
                uint256(stor[code.data[4139 len 32] + (2 * idx)]) = 0
            idx = idx + 1
            continue 
    else:
        require balances[address(msg.sender)]
        call msg.sender with:
           value balances[address(msg.sender)] wei
             gas 0 wei
        require bool(ext_call.success) != 0
        balances[address(msg.sender)] = 0
}

function _fallback() payable {
    require stor21 >= block.timestamp
    require 0 == stor24
    require stor2
    require msg.value >= ticketPrice
    require (msg.value / ticketPrice) + stor22 < 4228250625
    if msg.value > msg.value / ticketPrice * ticketPrice:
        call msg.sender with:
           value msg.value - (msg.value / ticketPrice * ticketPrice) wei
             gas 0 wei
        require bool(ext_call.success) != 0
    stor22 += msg.value / ticketPrice
    idx = 0
    while idx < stor19:
        mem[0] = 19
        if address(stor5666[idx]) != msg.sender:
            idx = idx + 1
            continue 
        require idx < stor19
        uint256(stor[code.data[4139 len 32] + (2 * idx)]) += msg.value / ticketPrice
    stor19++
    if not stor19 <= stor19 + 1:
        idx = (2 * stor19 + 1) + 0x5666de8ffda797e3de9c05e8fc57b3bf0ec28a930d40b0d285d93c06501cf6a0
        while (2 * stor19) + 0x5666de8ffda797e3de9c05e8fc57b3bf0ec28a930d40b0d285d93c06501cf6a0 > idx:
            address(stor[idx]) = 0
            stor1[idx] = 0
            idx = idx + 2
            continue 
    require stor19 < stor19
    uint256(stor5666[stor19]) = msg.sender or Mask(96, 160, uint256(stor5666[stor19]))
    uint256(stor[code.data[4139 len 32] + (2 * stor19)]) = msg.value / ticketPrice
}

function BuyTickets() payable {
    require stor21 >= block.timestamp
    require 0 == stor24
    require stor2
    require msg.value >= ticketPrice
    require (msg.value / ticketPrice) + stor22 < 4228250625
    if msg.value > msg.value / ticketPrice * ticketPrice:
        call msg.sender with:
           value msg.value - (msg.value / ticketPrice * ticketPrice) wei
             gas 0 wei
        require bool(ext_call.success) != 0
    stor22 += msg.value / ticketPrice
    idx = 0
    while idx < stor19:
        mem[0] = 19
        if address(stor5666[idx]) != msg.sender:
            idx = idx + 1
            continue 
        require idx < stor19
        uint256(stor[code.data[4139 len 32] + (2 * idx)]) += msg.value / ticketPrice
    stor19++
    if not stor19 <= stor19 + 1:
        idx = (2 * stor19 + 1) + 0x5666de8ffda797e3de9c05e8fc57b3bf0ec28a930d40b0d285d93c06501cf6a0
        while (2 * stor19) + 0x5666de8ffda797e3de9c05e8fc57b3bf0ec28a930d40b0d285d93c06501cf6a0 > idx:
            address(stor[idx]) = 0
            stor1[idx] = 0
            idx = idx + 2
            continue 
    require stor19 < stor19
    uint256(stor5666[stor19]) = msg.sender or Mask(96, 160, uint256(stor5666[stor19]))
    uint256(stor[code.data[4139 len 32] + (2 * stor19)]) = msg.value / ticketPrice
}

function Prizes() payable {
    if stor22 >= stor6:
        return 0, 
               (100 * stor22 * ticketPrice) - (stor4 * stor22 * ticketPrice) / 100 * stor9 / stor8 / 100,
               (100 * stor22 * ticketPrice) - (stor4 * stor22 * ticketPrice) / 100 * stor10 / stor8 / 100,
               (100 * stor22 * ticketPrice) - (stor4 * stor22 * ticketPrice) / 100 * stor11 / stor8 / 100,
               (100 * stor22 * ticketPrice) - (stor4 * stor22 * ticketPrice) / 100 * stor12 / stor8 / 100,
               (100 * stor22 * ticketPrice) - (stor4 * stor22 * ticketPrice) / 100 * stor13 / stor8 / 100,
               (100 * stor22 * ticketPrice) - (stor4 * stor22 * ticketPrice) / 100 * stor14 / stor8 / 100,
               (100 * stor22 * ticketPrice) - (stor4 * stor22 * ticketPrice) / 100 * stor15 / stor8 / 100,
               (100 * stor22 * ticketPrice) - (stor4 * stor22 * ticketPrice) / 100 * stor16 / stor8 / 100,
               (100 * stor22 * ticketPrice) - (stor4 * stor22 * ticketPrice) / 100 * stor17 / stor8 / 100,
               (100 * stor22 * ticketPrice) - (stor4 * stor22 * ticketPrice) / 100 * stor18 / stor8 / 100
    return 1, 
           (100 * stor6 * ticketPrice) - (stor4 * stor6 * ticketPrice) / 100 * stor9 / stor8 / 100,
           (100 * stor6 * ticketPrice) - (stor4 * stor6 * ticketPrice) / 100 * stor10 / stor8 / 100,
           (100 * stor6 * ticketPrice) - (stor4 * stor6 * ticketPrice) / 100 * stor11 / stor8 / 100,
           (100 * stor6 * ticketPrice) - (stor4 * stor6 * ticketPrice) / 100 * stor12 / stor8 / 100,
           (100 * stor6 * ticketPrice) - (stor4 * stor6 * ticketPrice) / 100 * stor13 / stor8 / 100,
           (100 * stor6 * ticketPrice) - (stor4 * stor6 * ticketPrice) / 100 * stor14 / stor8 / 100,
           (100 * stor6 * ticketPrice) - (stor4 * stor6 * ticketPrice) / 100 * stor15 / stor8 / 100,
           (100 * stor6 * ticketPrice) - (stor4 * stor6 * ticketPrice) / 100 * stor16 / stor8 / 100,
           (100 * stor6 * ticketPrice) - (stor4 * stor6 * ticketPrice) / 100 * stor17 / stor8 / 100,
           (100 * stor6 * ticketPrice) - (stor4 * stor6 * ticketPrice) / 100 * stor18 / stor8 / 100
}



}
