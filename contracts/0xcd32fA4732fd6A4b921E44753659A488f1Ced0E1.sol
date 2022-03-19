contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor0; offset 8
uint256 stor13;
uint8 stor19; offset 160

function _fallback() payable {
    uint8(stor0.field_0) = 0
    stor13 = 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f
    stor19 = 0
    Mask(248, 0, stor0.field_8) = Mask(248, 0, msg.sender)
    return code.data[152 len 5106]
}



// =====================  Runtime code  =====================


uint8 stage;
address owner; offset 8
uint256 stor0;
uint256 stor1;
uint256 rewardValue;
uint256 amount;
uint256 sub_d8f64b22;
uint256 sub_4523ad1b;
uint256 sub_b6ee3b86;
uint256 luckyNumber;
uint256 sub_6ef57dcf;
uint256 sub_ba1f042e;
uint256 sub_350df1df;
uint256 sub_256d1835;
uint8 high;
uint8 win; offset 8
address msgSenderAddress; offset 16
uint256 FACTOR;
array of struct sub_abc00bb4;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint8 stor19; offset 160
address stor19;
uint8 stor20; offset 160

function sub_0a831b35(?) payable {
    return sub_4523ad1b
}

function rewardValue() payable {
    return rewardValue
}

function sub_15932ee9(?) payable {
    return sub_256d1835
}

function sub_256d1835(?) payable {
    return sub_256d1835
}

function sub_350df1df(?) payable {
    return sub_350df1df
}

function FACTOR() payable {
    return FACTOR
}

function sub_35e990ac(?) payable {
    return sub_6ef57dcf
}

function sub_4523ad1b(?) payable {
    return sub_4523ad1b
}

function win() payable {
    return win
}

function sub_58cf8131(?) payable {
    return sub_b6ee3b86
}

function sub_62d95d9b(?) payable {
    return sub_d8f64b22
}

function sub_6ef57dcf(?) payable {
    return sub_6ef57dcf
}

function high() payable {
    return high
}

function owner() payable {
    return owner
}

function sub_a9d8ddc7(?) payable {
    return sub_ba1f042e
}

function amount() payable {
    return amount
}

function sub_abc00bb4(?) payable {
    require arg1 < sub_abc00bb4.length
    return sub_abc00bb4[arg1].field_512
}

function sub_b6ee3b86(?) payable {
    return sub_b6ee3b86
}

function sub_ba1f042e(?) payable {
    return sub_ba1f042e
}

function luckyNumber() payable {
    return luckyNumber
}

function stage() payable {
    return stage
}

function msgSender() payable {
    return msgSenderAddress
}

function sub_d8f64b22(?) payable {
    return sub_d8f64b22
}

function funders(uint256 arg1) payable {
    require arg1 < sub_abc00bb4.length
    return sub_abc00bb4[arg1].field_0, sub_abc00bb4[arg1].field_256, sub_abc00bb4[arg1].field_512, sub_abc00bb4[arg1].field_768
}

function getStage() payable {
    return stage
}

function kill() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_7ca5d65b(?) payable {
    if owner != msg.sender:
        return 0
    return sub_350df1df
}

function sub_6b0bd75f(?) payable {
    require stage == 2
    uint8(stor19.field_160) = 0
    emit 0xbce12a36 
    stage = 0
}

function rand() payable {
    require not stage
    sub_d8f64b22 = block.hash(block.number - 1)
    sub_4523ad1b = sha3(sub_d8f64b22)
    sub_6ef57dcf = sha3(sub_b6ee3b86)
    stor0 = stage + 1 or Mask(248, 8, stor0)
    emit 0x21902ae6 
}

function sub_eae1ab41(?) payable {
    if msg.sender == owner:
        stage = 0
        stor15 = sub_abc00bb4.length
        idx = 0
        while idx < stor15:
            require idx < sub_abc00bb4.length
            stor17 = sub_abc00bb4[idx].field_256
            mem[0] = 14
            address(stor19.field_0) = sub_abc00bb4[idx].field_0
            if stor16 < 50:
                call address(stor19.field_0) with:
                   value stor17 wei
                     gas 0 wei
            idx = idx + 1
            continue 
        sub_abc00bb4.length = 0
        idx = 0
        while 4 * sub_abc00bb4.length > idx:
            sub_abc00bb4[idx].field_0 = 0
            sub_abc00bb4[idx].field_256 = 0
            sub_abc00bb4[idx].field_512 = 0
            sub_abc00bb4[idx].field_768 = 0
            idx = idx + 1
            continue 
        stage = 0
}

function sub_3c6c2914(?) payable {
    require not stage
    if msg.value == 1:
        luckyNumber = arg1
        sub_b6ee3b86 = arg1
        rewardValue = msg.value + (90 * msg.value / 100)
        sub_abc00bb4.length++
        if not sub_abc00bb4.length <= sub_abc00bb4.length + 1:
            idx = 4 * sub_abc00bb4.length + 1
            while 4 * sub_abc00bb4.length > idx:
                sub_abc00bb4[idx].field_0 = 0
                sub_abc00bb4[idx].field_256 = 0
                sub_abc00bb4[idx].field_512 = 0
                sub_abc00bb4[idx].field_768 = 0
                idx = idx + 1
                continue 
        sub_abc00bb4[sub_abc00bb4.length].field_0 = msg.sender or Mask(96, 160, sub_abc00bb4[sub_abc00bb4.length].field_0)
        sub_abc00bb4[sub_abc00bb4.length].field_256 = msg.value
        sub_abc00bb4[sub_abc00bb4.length].field_512 = luckyNumber
        sub_abc00bb4[sub_abc00bb4.length].field_768 = rewardValue
        stor1 = block.number
}

function reveal(uint256 arg1) payable {
    require stage == 1
    emit 0x5ec5f894 
    if block.number >= stor1 + 2:
        emit 0xb9d0df81 
        stor20 = 1
        sub_350df1df = block.hash(block.number - 1)
        sub_256d1835 = (sub_d8f64b22 + sub_b6ee3b86 + sub_350df1df / FACTOR) + 1
        if sub_256d1835 > 49:
            stor15 = sub_abc00bb4.length
            idx = 0
            while idx < stor15:
                require idx < sub_abc00bb4.length
                stor16 = sub_abc00bb4[idx].field_512
                stor18 = sub_abc00bb4[idx].field_768
                mem[0] = 14
                address(stor19.field_0) = sub_abc00bb4[idx].field_0
                if stor16 > 49:
                    call address(stor19.field_0) with:
                       value stor18 wei
                         gas 0 wei
                idx = idx + 1
                continue 
            sub_abc00bb4.length = 0
            idx = 0
            while 4 * sub_abc00bb4.length > idx:
                sub_abc00bb4[idx].field_0 = 0
                sub_abc00bb4[idx].field_256 = 0
                sub_abc00bb4[idx].field_512 = 0
                sub_abc00bb4[idx].field_768 = 0
                idx = idx + 1
                continue 
            emit 0x52ff2cdc 
            stor0 = stage + 1 or Mask(248, 8, stor0)
        if sub_256d1835 < 50:
            stor15 = sub_abc00bb4.length
            idx = 0
            while idx < stor15:
                require idx < sub_abc00bb4.length
                stor16 = sub_abc00bb4[idx].field_512
                stor18 = sub_abc00bb4[idx].field_768
                mem[0] = 14
                address(stor19.field_0) = sub_abc00bb4[idx].field_0
                if stor16 < 50:
                    call address(stor19.field_0) with:
                       value stor18 wei
                         gas 0 wei
                idx = idx + 1
                continue 
            sub_abc00bb4.length = 0
            idx = 0
            while 4 * sub_abc00bb4.length > idx:
                sub_abc00bb4[idx].field_0 = 0
                sub_abc00bb4[idx].field_256 = 0
                sub_abc00bb4[idx].field_512 = 0
                sub_abc00bb4[idx].field_768 = 0
                idx = idx + 1
                continue 
            emit 0x52ff2cdc 
            stor0 = stage + 1 or Mask(248, 8, stor0)
            return 0
        else:
            return 0
    else:
        return 0
}



}
