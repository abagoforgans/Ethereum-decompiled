contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
address stor7921;
address stor7922;
address stor7923;
address stor7924;
uint256 stor7925;
uint256 stor7926;
uint256 stor7927;
uint256 stor7928;
uint256 stor7929;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Kraftwerk' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'KKT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 0
    stor7924 = 0
    stor7925 = 16
    stor7926 = 1000
    stor7927 = 10^18
    stor7928 = 298
    require stor7928
    stor7929 = 15 * stor7927 / stor7928
    require not msg.value
    stor7922 = code.data[10198 len 20]
    stor7921 = code.data[10230 len 20]
    stor7923 = code.data[10262 len 20]
    return code.data[773 len 9413]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of address holders;
mapping of uint8 stor1003;
array of struct additionalInfo;
array of uint256 seatsList;
mapping of uint256 balanceOf;
array of address sub_358dc19c;
array of uint256 bookingList;
mapping of uint256 amountOfBooked;
address stor7921;
address stor7922;
address stor7923;
address stor7924;
uint256 limitPerHolder;
uint256 seatsCount;
uint256 stor7927;
uint256 rate_Eth;
uint256 ticket_Price;

function name() {
    return name[0 len name.length]
}

function bookingList(address arg1, uint256 arg2) {
    require arg2 < 16
    return bookingList[arg1][arg2]
}

function Ticket_Price() {
    return ticket_Price
}

function holders(uint256 arg1) {
    require arg1 < 1000
    return holders[arg1]
}

function seatsList(address arg1, uint256 arg2) {
    require arg2 < 16
    return seatsList[arg1][arg2]
}

function decimals() {
    return decimals
}

function sub_358dc19c(?) {
    require arg1 < 30000
    return sub_358dc19c[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function usedTickets(uint256 arg1) {
    return bool(stor3EB[arg1])
}

function symbol() {
    return symbol[0 len symbol.length]
}

function seatsCount() {
    return seatsCount
}

function amountOfBooked(address arg1) {
    return amountOfBooked[arg1]
}

function Rate_Eth() {
    return rate_Eth
}

function additionalInfo(uint256 arg1) {
    return additionalInfo[arg1][0 len additionalInfo[arg1].length].field_0
}

function limitPerHolder() {
    return limitPerHolder
}

function setRate(uint256 arg1) {
    require msg.sender == stor7922
    rate_Eth = arg1
    require rate_Eth
    ticket_Price = 15 * stor7927 / rate_Eth
}

function withdrawEther(uint256 arg1) {
    require msg.sender == stor7921
    call stor7923 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_48870b1b(?) {
    require msg.sender == stor7921
    require arg2 < 30000
    require sub_358dc19c[arg2] == arg1
    idx = 0
    while idx < limitPerHolder:
        mem[0] = arg1
        mem[32] = 31007
        require idx < 16
        if arg2 != bookingList[address(arg1)][idx]:
            idx = idx + 1
            continue 
        require arg2 < 30000
        sub_358dc19c[arg2] = stor7924
        require idx < 16
        bookingList[address(arg1)][idx] = 0
        amountOfBooked[address(arg1)]--
        emit LogCancelReservation(address(arg1), arg2);
    amountOfBooked[address(arg1)]--
    emit LogCancelReservation(address(arg1), arg2);
}

function redeemTicket(uint256 arg1, address arg2) {
    require msg.sender == stor7921
    require arg1 > 0
    require arg1 < seatsCount
    require not stor3EB[arg1]
    require arg1 < 1000
    require holders[arg1] == arg2
    stor3EB[arg1] = 1
    mem[224] = additionalInfo[arg1].field_0
    idx = 224
    s = 0
    while additionalInfo[arg1].length + 224 > idx + 32:
        mem[idx + 32] = additionalInfo[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit LogRedeemTicket(arg1, address(arg2), Array(len=additionalInfo[arg1].length, data=mem[224 len additionalInfo[arg1].length + (floor32(additionalInfo[arg1].length - 1) + -additionalInfo[arg1].length + 32 % 32)]));
}

function sub_1f94d555(?) {
    require msg.sender == stor7921
    require cd[4] > 0
    require cd[4] < seatsCount
    require cd[4] < 1000
    require holders[cd[4]] == stor7924
    require cd[4] < 30000
    require sub_358dc19c[cd[4]] == stor7924
    require balanceOf[address(cd[36])] + amountOfBooked[address(cd[36])] < limitPerHolder
    require cd[4] < 30000
    sub_358dc19c[cd[4]] = address(cd[36])
    amountOfBooked[address(cd[36])]++
    mem[0] = address(cd[36])
    mem[32] = 31007
    require var21001 < 16
    s = var21001
    t = 0
    u = var21001
    while stor[s + t + sha3(mem[0 len 64])]:
        mem[0] = address(cd[36])
        mem[32] = 31007
        require u + 1 < 16
        s = u + 1
        t = sha3(address(cd[36]), 31007)
        u = u + 1
        continue 
    require u < 16
    bookingList[address(cd[36])][u] = cd[4]
    additionalInfo[cd[4]].field_0 = (2 * ('cd', 68).length) + 1
    s = 0
    idx = cd[68] + 36
    while cd[68] + ('cd', 68).length + 36 > idx:
        additionalInfo[cd[4]][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
    while additionalInfo[cd[4]].length + 31 / 32 > idx:
        additionalInfo[cd[4]][idx].field_0 = 0
        idx = idx + 1
        continue 
    emit LogBookTicket(cd[4], address(cd[36]), Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length]));
}

function allocateTicket(uint256 arg1, address arg2, string arg3) {
    require msg.sender == stor7921
    require arg1 > 0
    require arg1 < seatsCount
    require arg1 < 1000
    require holders[arg1] == stor7924
    require balanceOf[address(arg2)] < limitPerHolder
    require arg1 < 30000
    require sub_358dc19c[arg1] == stor7924
    idx = 0
    while idx < limitPerHolder:
        mem[0] = arg2
        mem[32] = 1005
        require idx < 16
        if seatsList[address(arg2)][idx]:
            idx = idx + 1
            continue 
        require arg1 < 1000
        holders[arg1] = arg2
        balanceOf[address(arg2)]++
        require idx < 16
        seatsList[address(arg2)][idx] = arg1
        additionalInfo[arg1].field_0 = (2 * arg3.length) + 1
        s = sha3(sha3(arg1, 1004))
        idx = arg3 + 36
        while arg3 + arg3.length + 36 > idx:
            stor[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = sha3(sha3(arg1, 1004)) + (Mask(251, 0, arg3.length + 31) >> 5)
        while sha3(sha3(arg1, 1004)) + (additionalInfo[arg1].length + 31 / 32) > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        emit LogAllocateTicket(arg1, address(arg2), Array(len=arg3.length, data=arg3[all]));
    require arg1 < 1000
    holders[arg1] = arg2
    balanceOf[address(arg2)]++
    require idx < 16
    seatsList[address(arg2)][idx] = arg1
    additionalInfo[arg1].field_0 = (2 * arg3.length) + 1
    s = 0
    idx = arg3 + 36
    while arg3 + arg3.length + 36 > idx:
        additionalInfo[arg1][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg3.length + 31) >> 5
    while additionalInfo[arg1].length + 31 / 32 > idx:
        additionalInfo[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    emit LogAllocateTicket(arg1, address(arg2), Array(len=arg3.length, data=arg3[all]));
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor7921
    require arg3 > 0
    require arg3 < seatsCount
    require arg3 < 1000
    require holders[arg3] == arg1
    require balanceOf[address(arg2)] < limitPerHolder
    require arg1 != arg2
    require arg3 < 1000
    holders[arg3] = arg2
    balanceOf[address(arg1)]--
    if arg2 != stor7924:
        idx = 0
        while idx < limitPerHolder:
            mem[0] = arg2
            mem[32] = 1005
            require idx < 16
            if seatsList[address(arg2)][idx]:
                idx = idx + 1
                continue 
            balanceOf[address(arg2)]++
            require idx < 16
            seatsList[address(arg2)][idx] = arg3
            idx = 0
            while idx < limitPerHolder:
                mem[0] = arg1
                mem[32] = 1005
                require idx < 16
                if seatsList[address(arg1)][idx] == arg3:
                    mem[0] = arg1
                    mem[32] = 1005
                    require idx < 16
                    seatsList[address(arg1)][idx] = 0
                idx = idx + 1
                continue 
            mem[256] = additionalInfo[arg3].field_0
            idx = 256
            s = sha3(sha3(arg3, 1004))
            while additionalInfo[arg3].length + 256 > idx + 32:
                mem[idx + 32] = symbol[s]
                idx = idx + 32
                s = s + 1
                continue 
            emit LogTransfer(address(arg1), address(arg2), arg3, Array(len=additionalInfo[arg3].length, data=mem[256 len additionalInfo[arg3].length + (floor32(additionalInfo[arg3].length - 1) + -additionalInfo[arg3].length + 32 % 32)]));
        balanceOf[address(arg2)]++
        require idx < 16
        seatsList[address(arg2)][idx] = arg3
    idx = 0
    while idx < limitPerHolder:
        mem[0] = arg1
        mem[32] = 1005
        require idx < 16
        if seatsList[address(arg1)][idx] == arg3:
            mem[0] = arg1
            mem[32] = 1005
            require idx < 16
            seatsList[address(arg1)][idx] = 0
        idx = idx + 1
        continue 
    mem[256] = additionalInfo[arg3].field_0
    idx = 256
    s = 0
    while additionalInfo[arg3].length + 256 > idx + 32:
        mem[idx + 32] = additionalInfo[arg3][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit LogTransfer(address(arg1), address(arg2), arg3, Array(len=additionalInfo[arg3].length, data=mem[256 len additionalInfo[arg3].length + (floor32(additionalInfo[arg3].length - 1) + -additionalInfo[arg3].length + 32 % 32)]));
}

function _fallback() payable {
    mem[64] = 96
    require amountOfBooked[address(msg.sender)]
    require balanceOf[address(msg.sender)] + amountOfBooked[address(msg.sender)] <= limitPerHolder
    mem[0] = msg.sender
    require msg.value >= ticket_Price * amountOfBooked[address(msg.sender)]
    s = 0
    t = 0
    idx = 0
    while idx < limitPerHolder:
        mem[0] = msg.sender
        mem[32] = 31007
        require idx < 16
        if not bookingList[address(msg.sender)][idx]:
            s = s
            t = t
            idx = idx + 1
            continue 
        require idx < 16
        mem[0] = msg.sender
        bookingList[address(msg.sender)][idx] = 0
        require bookingList[address(msg.sender)][idx] < 30000
        sub_358dc19c[stor791F[address(msg.sender)][idx]] = stor7924
        s = 0
        while s < limitPerHolder:
            mem[0] = msg.sender
            mem[32] = 1005
            require s < 16
            if seatsList[address(msg.sender)][s]:
                s = s + 1
                continue 
            require bookingList[address(msg.sender)][idx] < 1000
            holders[stor791F[address(msg.sender)][idx]] = msg.sender
            balanceOf[address(msg.sender)]++
            require s < 16
            seatsList[address(msg.sender)][s] = bookingList[address(msg.sender)][idx]
            mem[0] = bookingList[address(msg.sender)][idx]
            mem[32] = 1004
            _58 = mem[64]
            mem[mem[64]] = bookingList[address(msg.sender)][idx]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = additionalInfo[stor791F[address(msg.sender)][idx]].length
            mem[0] = sha3(bookingList[address(msg.sender)][idx], 1004)
            mem[mem[64] + 128] = additionalInfo[stor791F[address(msg.sender)][idx]].field_0
            s = mem[64] + 128
            t = sha3(mem[0])
            while _58 + additionalInfo[stor791F[address(msg.sender)][idx]].length + 128 > s + 32:
                mem[s + 32] = symbol[t]
                s = s + 32
                t = t + 1
                continue 
            emit LogAllocateTicket(uint256 rg1, address rg2, string rg3):
                                   mem[mem[64] len _58 + additionalInfo[stor791F[address(msg.sender)][idx]].length + (floor32(additionalInfo[stor791F[address(msg.sender)][idx]].length - 1) + -additionalInfo[stor791F[address(msg.sender)][idx]].length + 32 % 32) + -mem[64] + 128],
            s = sha3(bookingList[address(msg.sender)][idx], 1004)
            t = bookingList[address(msg.sender)][idx]
            idx = idx + 1
            continue 
        require bookingList[address(msg.sender)][idx] < 1000
        holders[stor791F[address(msg.sender)][idx]] = msg.sender
        balanceOf[address(msg.sender)]++
        require s < 16
        seatsList[address(msg.sender)][s] = bookingList[address(msg.sender)][idx]
        mem[0] = bookingList[address(msg.sender)][idx]
        mem[32] = 1004
        _51 = mem[64]
        mem[mem[64]] = bookingList[address(msg.sender)][idx]
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = additionalInfo[stor791F[address(msg.sender)][idx]].length
        mem[0] = sha3(bookingList[address(msg.sender)][idx], 1004)
        mem[mem[64] + 128] = additionalInfo[stor791F[address(msg.sender)][idx]].field_0
        s = mem[64] + 128
        t = sha3(mem[0])
        while _51 + additionalInfo[stor791F[address(msg.sender)][idx]].length + 128 > s + 32:
            mem[s + 32] = symbol[t]
            s = s + 32
            t = t + 1
            continue 
        emit LogAllocateTicket(uint256 rg1, address rg2, string rg3):
                               mem[mem[64] len _51 + additionalInfo[stor791F[address(msg.sender)][idx]].length + (floor32(additionalInfo[stor791F[address(msg.sender)][idx]].length - 1) + -additionalInfo[stor791F[address(msg.sender)][idx]].length + 32 % 32) + -mem[64] + 128],
        s = sha3(bookingList[address(msg.sender)][idx], 1004)
        t = bookingList[address(msg.sender)][idx]
        idx = idx + 1
        continue 
    amountOfBooked[address(msg.sender)] = 0
}



}
