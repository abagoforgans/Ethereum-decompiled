contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor3 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor5 += msg.value
    return code.data[67 len 1842]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;
array of struct stor2;
uint256 stor3;
address currentManagerAddress;
uint256 balance;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403024;
array of uint8 stor29102676481673041902632991033461445430619272659676223336789171408008386403025;

function currentManager() payable {
    return currentManagerAddress
}

function balance() payable {
    return balance
}

function found() payable {
    require msg.sender == stor0
    balance += msg.value
}

function setOfficialWebsite(string arg1) payable {
    require msg.sender == stor0
    stor1[] = Array(len=arg1.length, data=arg1[all])
}

function investors(uint256 arg1) payable {
    require arg1 < stor2.length
    return stor2[arg1].field_0, stor4057[arg1], stor4057[arg1], uint8(stor4057[arg1])
}

function invest() payable {
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = 4 * stor2.length + 1
        while 4 * stor2.length > idx:
            stor2[idx].field_0 = 0
            stor2[idx].field_256 = 0
            stor2[idx].field_512 = 0
            stor2[idx].field_768 = 0
            idx = idx + 1
            continue 
    stor2[stor2.length].field_0 = stor2[stor2.length].field_160
    stor2[stor2.length].field_256 = msg.value
    stor2[stor2.length].field_512 = block.timestamp / 24 * 3600
    if msg.value <= 10^18:
        stor2[stor2.length].field_768 = 110
    else:
        if msg.value <= 10 * 10^18:
            stor2[stor2.length].field_768 = 120
        else:
            if msg.value <= 100 * 10^18:
                stor2[stor2.length].field_768 = 130
            else:
                stor2[stor2.length].field_768 = 0
                stor2[stor2.length].field_1024 = 0
    balance += 99 * msg.value / 100
    call currentManagerAddress with:
       value msg.value / 100 wei
         gas 0 wei
    emit Invest(msg.sender, msg.value);
}

function _fallback() payable {
    require msg.value >= 10^17
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = 4 * stor2.length + 1
        while 4 * stor2.length > idx:
            stor2[idx].field_0 = 0
            stor2[idx].field_256 = 0
            stor2[idx].field_512 = 0
            stor2[idx].field_768 = 0
            idx = idx + 1
            continue 
    stor2[stor2.length].field_0 = stor2[stor2.length].field_160
    stor2[stor2.length].field_256 = msg.value
    stor2[stor2.length].field_512 = block.timestamp / 24 * 3600
    if msg.value <= 10^18:
        stor2[stor2.length].field_768 = 110
    else:
        if msg.value <= 10 * 10^18:
            stor2[stor2.length].field_768 = 120
        else:
            if msg.value <= 100 * 10^18:
                stor2[stor2.length].field_768 = 130
            else:
                stor2[stor2.length].field_768 = 0
                stor2[stor2.length].field_1024 = 0
    balance += 99 * msg.value / 100
    call currentManagerAddress with:
       value msg.value / 100 wei
         gas 0 wei
    emit Invest(msg.sender, msg.value);
    idx = stor3
    s = 0
    while idx < stor2.length:
        if balance < stor4057[idx] / 100:
        require idx < stor2.length
        mem[0] = 2
        if stor4057[idx] < block.timestamp / 24 * 3600:
            require idx < stor2.length
            if uint8(stor4057[idx]) <= 0:
                stor3 = idx
            require idx < stor2.length
            call stor2[idx].field_0 with:
               value stor4057[idx] / 100 wei
                 gas 0 wei
            mem[0] = 2
            stor4057[idx] = block.timestamp / 24 * 3600
            uint256(stor4057[idx]) = uint8(stor4057[idx]) - 1 or Mask(248, 8, uint256(stor4057[idx]))
            balance -= stor4057[idx] / 100
            mem[224] = stor2[idx].field_0
            mem[256] = stor4057[idx] / 100
            emit Payout(stor2[idx].field_0, stor4057[idx] / 100);
        idx = idx + 1
        s = stor4057[idx] / 100
        continue 
}



}
