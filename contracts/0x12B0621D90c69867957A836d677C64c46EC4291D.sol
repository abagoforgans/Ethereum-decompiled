contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
uint256 stor2;
mapping of uint8 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    mem[96 len -4417] = code.data[4761 len -4417]
    mem[64] = -4321
    stor1 = 0
    stor2 = mem[mem[96] + 96]
    mem[0] = 2
    if not mem[mem[96] + 96]:
        idx = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
        while stor2 + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
            address(stor[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            uint256(stor[s]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
        while stor2 + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
            address(stor[idx]) = 0
            idx = idx + 1
            continue 
    stor0 = mem[128]
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    stor4 = mem[mem[96] + 96]
    stor5 = 0
    return code.data[344 len 4417]
}



// =====================  Runtime code  =====================


uint256 sharePrice;
uint8 funded;
array of address partners;
mapping of struct sub_8988b7ff;
uint256 partnerCount;
uint256 sub_f668660b;
mapping of struct transactions;
uint256 sub_d00be319;
mapping of uint256 sub_da018bda;

function transactions(bytes32 arg1) payable {
    mem[416] = transactions[arg1][2].field_0
    idx = 416
    s = 0
    while transactions[arg1][2].length + 416 > idx + 32:
        mem[idx + 32] = transactions[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[transactions[arg1][2].length + (floor32(transactions[arg1][2].length - 1) + -transactions[arg1][2].length + 32 % 32) + 416] = transactions[arg1][3].length
    mem[transactions[arg1][2].length + (floor32(transactions[arg1][2].length - 1) + -transactions[arg1][2].length + 32 % 32) + 448] = transactions[arg1][3].field_0
    idx = transactions[arg1][2].length + (floor32(transactions[arg1][2].length - 1) + -transactions[arg1][2].length + 32 % 32) + 448
    s = 0
    while transactions[arg1][2].length + (floor32(transactions[arg1][2].length - 1) + -transactions[arg1][2].length + 32 % 32) + transactions[arg1][3].length + 448 > idx + 32:
        mem[idx + 32] = transactions[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return transactions[arg1].field_0, 
           transactions[arg1].field_0,
           transactions[arg1].field_256,
           Array(len=transactions[arg1][2].length, data=mem[416 len transactions[arg1][2].length + (floor32(transactions[arg1][2].length - 1) + -transactions[arg1][2].length + 32 % 32) + transactions[arg1][3].length + (floor32(transactions[arg1][3].length - 1) + -transactions[arg1][3].length + 32 % 32) + 32]),
           transactions[arg1][2].length + (floor32(transactions[arg1][2].length - 1) + -transactions[arg1][2].length + 32 % 32) + 320,
           transactions[arg1].field_1024,
           transactions[arg1].field_1280,
           transactions[arg1].field_1792,
           transactions[arg1].field_1792
}

function sharePrice() payable {
    return sharePrice
}

function sub_8988b7ff(?) payable {
    return sub_8988b7ff[arg1].field_0, sub_8988b7ff[arg1].field_0, sub_8988b7ff[arg1].field_256
}

function partners(uint256 arg1) payable {
    require arg1 < partners.length
    return partners[arg1]
}

function sub_d00be319(?) payable {
    return sub_d00be319
}

function sub_da018bda(?) payable {
    return sub_da018bda[arg1]
}

function partnerCount() payable {
    return partnerCount
}

function funded() payable {
    return funded
}

function sub_f668660b(?) payable {
    return sub_f668660b
}

function dissolve(address arg1) payable {
    require msg.sender == this.address
    require arg1 != 0
    require arg1 != this.address
    selfdestruct(arg1)
}

function distribute(address arg1, uint256 arg2) payable {
    require msg.sender == this.address
    sub_da018bda[address(arg1)] += arg2
}

function repayLoan(address arg1, uint256 arg2) payable {
    require msg.sender == this.address
    require sub_8988b7ff[address(arg1)].field_0
    require arg2 <= sub_8988b7ff[address(arg1)].field_256
    sub_8988b7ff[address(arg1)].field_256 -= arg2
    sub_da018bda[address(arg1)] += arg2
}

function distributeEvenly(uint256 arg1) payable {
    require msg.sender == this.address
    idx = 0
    while idx < partnerCount:
        require idx < partners.length
        mem[0] = partners[idx]
        mem[32] = 8
        sub_da018bda[stor2[idx]] += arg1 / partnerCount
        idx = idx + 1
        continue 
}

function withdraw(uint256 arg1) payable {
    require funded
    require arg1 <= sub_da018bda[address(msg.sender)]
    require arg1 <= eth.balance(this.address)
    sub_da018bda[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 0 wei
    if not ext_call.success:
        sub_da018bda[address(msg.sender)] += arg1
    else:
        emit Withdrawal(msg.sender, arg1);
}

function _fallback() payable {
    if msg.value > 0:
        if funded:
            if sub_8988b7ff[address(msg.sender)].field_0:
                sub_8988b7ff[address(msg.sender)].field_256 += msg.value
        else:
            require sub_8988b7ff[address(msg.sender)].field_0
            require not sub_8988b7ff[address(msg.sender)].field_8
            require msg.value == sharePrice
            sub_8988b7ff[address(msg.sender)].field_8 = 1
            sub_f668660b++
            if partnerCount == sub_f668660b + 1:
                funded = 1
                emit Funded()
        emit Deposit(msg.sender, msg.value);
}

function confirmTransaction(bytes32 arg1) payable {
    require funded
    require sub_8988b7ff[address(msg.sender)].field_0
    require transactions[arg1].field_0
    require transactions[arg1][6][address(msg.sender)].field_0 != 1
    transactions[arg1].field_1280++
    transactions[arg1][6][address(msg.sender)].field_0 = 1
    if partnerCount == transactions[arg1].field_1280:
        transactions[arg1].field_1792 = 1
        mem[224] = transactions[arg1][3].field_0
        idx = 224
        s = 0
        while transactions[arg1][3].length + 224 > idx + 32:
            mem[idx + 32] = transactions[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit TransactionPassed(arg1, msg.sender, Array(len=transactions[arg1][3].length, data=mem[224 len transactions[arg1][3].length + (floor32(transactions[arg1][3].length - 1) + -transactions[arg1][3].length + 32 % 32)]));
}

function cancelTransaction(bytes32 arg1) payable {
    require funded
    require sub_8988b7ff[address(msg.sender)].field_0
    require transactions[arg1].field_0
    require not transactions[arg1].field_1792
    require msg.sender == transactions[arg1].field_1024
    transactions[arg1].field_0 = 0
    transactions[arg1].field_256 = 0
    transactions[arg1].field_512 = 0
    if 31 < transactions[arg1][2].length:
        idx = 0
        while transactions[arg1][2].length + 31 / 32 > idx:
            transactions[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    transactions[arg1].field_768 = 0
    if 31 < transactions[arg1][3].length:
        idx = 0
        while transactions[arg1][3].length + 31 / 32 > idx:
            transactions[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    transactions[arg1].field_1024 = 0
    transactions[arg1].field_1280 = 0
    transactions[arg1].field_1792 = 0
    sub_d00be319--
    emit TransactionCanceled(arg1, msg.sender);
}

function executeTransaction(bytes32 arg1) payable {
    require funded
    require sub_8988b7ff[address(msg.sender)].field_0
    require transactions[arg1].field_1792
    require not transactions[arg1].field_1800
    transactions[arg1].field_1800 = 1
    sub_d00be319--
    mem[96] = transactions[arg1][2].field_0
    idx = 96
    s = 0
    while transactions[arg1][2].length + 96 > idx + 32:
        mem[idx + 32] = transactions[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call transactions[arg1].field_8.mem[96 len 4] with:
       value transactions[arg1].field_256 wei
         gas gas_remaining - 34050 wei
        args mem[100 len transactions[arg1][2].length + (floor32(transactions[arg1][2].length - 1) + -transactions[arg1][2].length + 32 % 32) - 4]
    if not ext_call.success:
        transactions[arg1].field_1800 = 0
        sub_d00be319++
    else:
        mem[224] = transactions[arg1][3].field_0
        idx = 224
        s = 0
        while transactions[arg1][3].length + 224 > idx + 32:
            mem[idx + 32] = transactions[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit TransactionSent(arg1, msg.sender, Array(len=transactions[arg1][3].length, data=mem[224 len transactions[arg1][3].length + (floor32(transactions[arg1][3].length - 1) + -transactions[arg1][3].length + 32 % 32)]));
        transactions[arg1].field_0 = 0
        transactions[arg1].field_256 = 0
        transactions[arg1].field_512 = 0
        if 31 < transactions[arg1][2].length:
            idx = 0
            while transactions[arg1][2].length + 31 / 32 > idx:
                transactions[arg1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        transactions[arg1].field_768 = 0
        if 31 < transactions[arg1][3].length:
            idx = 0
            while transactions[arg1][3].length + 31 / 32 > idx:
                transactions[arg1][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        transactions[arg1].field_1024 = 0
        transactions[arg1].field_1280 = 0
        transactions[arg1].field_1792 = 0
}

function proposeTransaction(address arg1, uint256 arg2, bytes arg3, string arg4) payable {
    require funded
    require sub_8988b7ff[address(msg.sender)].field_0
    transactions[call.data[0 len calldata.size]][block.number].field_0 = 1
    transactions[call.data[0 len calldata.size]][block.number].field_8 = Mask(248, 0, arg1)
    transactions[call.data[0 len calldata.size]][block.number].field_256 = arg2
    transactions[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
    s = 0
    idx = arg3 + 36
    while arg3 + arg3.length + 36 > idx:
        transactions[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg3.length + 31) >> 5
    while transactions[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
        transactions[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    transactions[call.data[0 len calldata.size]][block.number].field_768 = (2 * arg4.length) + 1
    s = 0
    idx = arg4 + 36
    while arg4 + arg4.length + 36 > idx:
        transactions[call.data[0 len calldata.size]][block.number][s + 3].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg4.length + 31) >> 5
    while transactions[call.data[0 len calldata.size]][block.number][3].length + 31 / 32 > idx:
        transactions[call.data[0 len calldata.size]][block.number][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    transactions[call.data[0 len calldata.size]][block.number].field_1024 = msg.sender or Mask(96, 160, transactions[call.data[0 len calldata.size]][block.number].field_1024)
    transactions[call.data[0 len calldata.size]][block.number].field_1280 = 1
    transactions[call.data[0 len calldata.size]][block.number][6][address(msg.sender)].field_0 = 1
    transactions[call.data[0 len calldata.size]][block.number].field_1792 = 0
    sub_d00be319++
    emit TransactionProposed(sha3(call.data[0 len calldata.size], block.number), msg.sender, Array(len=arg4.length, data=arg4[all]));
    return sha3(call.data[0 len calldata.size], block.number)
}



}
