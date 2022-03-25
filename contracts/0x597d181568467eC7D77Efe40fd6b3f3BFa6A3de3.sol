contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor12; offset 160
uint128 stor12; offset 168
address stor12;
uint256 stor13;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor3 = 0
    stor6 = 0
    stor9 = 0
    stor8 = 0
    stor4 = code.data[3390 len 32] + block.timestamp
    stor5 = 0
    stor7 = code.data[3422 len 32]
    stor10 = code.data[3454 len 32] or Mask(96, 160, stor10)
    address(stor12.field_0) = address(code.data[3486 len 32])
    uint8(stor12.field_160) = 0
    Mask(88, 0, stor12.field_168) = Mask(88, 168, code.data[3486 len 32]) >> 168
    stor13 = 0
    return code.data[149 len 3241]
}



// =====================  Runtime code  =====================


const getPot = eth.balance(this.address)


address stor0;
address stor1;
uint256 stor1;
address stor2;
uint256 numTickets;
uint256 sub_89f0e629;
uint256 sub_9f0ec251;
uint8 drawn;
uint256 entryFee;
uint256 payout;
uint256 winningNumber;
address sub_7e537486Address;
address nextDrawAddress;
uint256 stor11;
uint8 paidOut; offset 160
address sub_17dc61e2Address;
uint256 stor13;
mapping of struct tickets;
array of address sub_3e88ccb5;

function entryFee() payable {
    return entryFee
}

function sub_17dc61e2(?) payable {
    return sub_17dc61e2Address
}

function nextDraw() payable {
    return address(nextDrawAddress)
}

function numTickets() payable {
    return numTickets
}

function sub_3e88ccb5(?) payable {
    require arg1 < sub_3e88ccb5.length
    return sub_3e88ccb5[arg1]
}

function winningNumber() payable {
    return winningNumber
}

function tickets(uint256 arg1) payable {
    return tickets[arg1].field_0, address(tickets[arg1].field_256)
}

function paidOut() payable {
    return bool(paidOut)
}

function payout() payable {
    return payout
}

function sub_7e537486(?) payable {
    return sub_7e537486Address
}

function sub_89f0e629(?) payable {
    return sub_89f0e629
}

function sub_9f0ec251(?) payable {
    return sub_9f0ec251
}

function drawn() payable {
    return bool(drawn)
}

function _fallback() payable {
  stop
}

function sub_dc408109(?) payable {
    require drawn
    idx = 0
    s = 0
    while idx < sub_3e88ccb5.length:
        mem[0] = 15
        if sub_3e88ccb5[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + (payout / sub_3e88ccb5.length)
        continue 
    return s
}

function buyTicket(address arg1, uint256 arg2) payable {
    require msg.value == entryFee
    require arg2 <= 1000
    require arg2 >= 1
    require not drawn
    numTickets++
    tickets[stor3].field_0 = arg2
    tickets[stor3].field_256 = arg1 or Mask(96, 160, tickets[stor3].field_256)
    emit 0xf3d319fb: numTickets
    return numTickets
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    require not drawn
    require stor13 != 0
    require arg1 == stor13
    drawn = 1
    sub_9f0ec251 = block.timestamp
    mem[64] = ceil32(arg2.length) + 160
    mem[ceil32(arg2.length) + 128] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                require idx < arg2.length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    winningNumber = s
    emit 0xa391a40e: s
}

function sub_09cc5ec4(?) payable {
    require drawn
    require winningNumber != 0
    require stor2 == msg.sender
    require not paidOut
    paidOut = 1
    uint256(stor11) = arg1 or Mask(96, 160, uint256(stor11))
    idx = 0
    while idx < numTickets:
        mem[0] = idx
        mem[32] = 14
        if tickets[idx].field_0 == winningNumber:
            sub_3e88ccb5.length++
            if not sub_3e88ccb5.length <= sub_3e88ccb5.length + 1:
                s = sub_3e88ccb5.length + sha3(15) + 1
                while sha3(15) + sub_3e88ccb5.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = idx
            mem[32] = 14
            sub_3e88ccb5[sub_3e88ccb5.length] = address(tickets[idx].field_256)
        idx = idx + 1
        continue 
    payout = eth.balance(this.address) - (numTickets * entryFee / 10)
    idx = 0
    while idx < sub_3e88ccb5.length:
        mem[0] = 15
        call sub_3e88ccb5[idx] with:
           value payout / sub_3e88ccb5.length wei
             gas 0 wei
        require ext_call.success
        idx = idx + 1
        continue 
    call sub_7e537486Address with:
       value numTickets * entryFee / 10 wei
         gas 0 wei
    require ext_call.success
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 0 wei
    emit 0xd398025b: winningNumber
}

function sub_a73d2a5a(?) payable {
    require not drawn
    require stor2 == msg.sender
    require block.timestamp >= sub_89f0e629
    call stor0.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if 0 == ext_call.return_data[12 len 20]:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
                stor0 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
        call stor0.getAddress() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    mem[292] = mem[312 len 12]
    call address(ext_call.return_data[0]).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=12, data=mem[292])
    require ext_call.success
    if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
        stor13 = 0
    else:
        mem[356] = mem[376 len 12]
        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args 0, 96, 160, 12, mem[356], 32, 'random number between 1 and 1000'
        require ext_call.success
        stor13 = ext_call.return_data[0]
}



}
