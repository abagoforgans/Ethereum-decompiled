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
    return code.data[152 len 5658]
}



// =====================  Runtime code  =====================


uint8 stage;
address owner; offset 8
uint256 stor0;
uint256 rewardValue;
uint256 amount;
uint256 sub_d8f64b22;
uint256 sub_4523ad1b;
uint256 sub_b6ee3b86;
uint256 luckyNumber;
uint256 sub_35e990ac;
uint256 sub_a9d8ddc7;
uint256 sub_350df1df;
uint256 sub_256d1835;
uint8 high;
uint8 win; offset 8
address msgSenderAddress; offset 16
uint256 FACTOR;
array of struct funders;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint8 stor19; offset 160
address stor19;

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
    return sub_35e990ac
}

function sub_4523ad1b(?) payable {
    return sub_4523ad1b
}

function win() payable {
    return win
}

function sub_62d95d9b(?) payable {
    return sub_d8f64b22
}

function high() payable {
    return high
}

function owner() payable {
    return owner
}

function sub_a9d8ddc7(?) payable {
    return sub_a9d8ddc7
}

function amount() payable {
    return amount
}

function sub_b6ee3b86(?) payable {
    return sub_b6ee3b86
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
    require arg1 < funders.length
    return funders[arg1].field_0, funders[arg1].field_256, funders[arg1].field_512
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

function sub_0dcc4b74(?) payable {
    require stage == 1
    stor0 = stage + 1 or Mask(248, 8, stor0)
    emit 0x612dd51b 
}

function sub_34042718(?) payable {
    require stage == 2
    stor0 = stage + 1 or Mask(248, 8, stor0)
    emit 0xdbdea8b0 
}

function sub_d0fc1946(?) payable {
    require stage == 4
    stor0 = stage + 1 or Mask(248, 8, stor0)
    emit 0xdaeca1c6 
}

function sub_6b0bd75f(?) payable {
    require stage == 5
    uint8(stor19.field_160) = 0
    emit 0x1c77165d 
    stage = 0
}

function rand() payable {
    require not stage
    sub_d8f64b22 = block.hash(block.number - 1)
    sub_4523ad1b = sha3(sub_d8f64b22)
    stor0 = stage + 1 or Mask(248, 8, stor0)
    emit 0x890c4596 
}

function sub_eae1ab41(?) payable {
    if msg.sender == owner:
        stage = 0
        stor15 = funders.length
        idx = 0
        while idx < stor15:
            require idx < funders.length
            stor17 = funders[idx].field_256
            mem[0] = 14
            address(stor19.field_0) = funders[idx].field_0
            call address(stor19.field_0) with:
               value stor17 wei
                 gas 0 wei
            idx = idx + 1
            continue 
        funders.length = 0
        idx = 0
        while 3 * funders.length > idx:
            funders[idx].field_0 = 0
            funders[idx].field_256 = 0
            funders[idx].field_512 = 0
            idx = idx + 1
            continue 
        stage = 0
}

function sub_3c6c2914(?) payable {
    stor15 = funders.length
    if not stage:
        sub_b6ee3b86 = arg1
    if stage == 4:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        if stor15 > 2:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if stor15 >= 3:
            if stage == 4:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            if stor15 > 2:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if msg.value > 5 * eth.balance(this.address) / 100:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
                if stage == 4:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                if stor15 > 2:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                luckyNumber = arg1
                funders.length++
                if not funders.length <= funders.length + 1:
                    idx = (3 * funders.length) + 3
                    while 3 * funders.length > idx:
                        funders[idx].field_0 = 0
                        funders[idx].field_256 = 0
                        funders[idx].field_512 = 0
                        idx = idx + 1
                        continue 
                funders[funders.length].field_0 = msg.sender or Mask(96, 160, funders[funders.length].field_0)
                funders[funders.length].field_256 = msg.value
                funders[funders.length].field_512 = luckyNumber
                if msg.value > 5 * eth.balance(this.address) / 100:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                if stage == 4:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                if stor15 > 2:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
}

function reveal() payable {
    require stage == 3
    sub_350df1df = block.hash(block.number - 1)
    sub_256d1835 = (sub_d8f64b22 + sub_b6ee3b86 + sub_350df1df / FACTOR) + 1
    if sub_256d1835 > 50:
        stor15 = funders.length
        idx = 0
        while idx < stor15:
            require idx < funders.length
            stor16 = funders[idx].field_512
            stor18 = funders[idx].field_256 + (98 * funders[idx].field_256 / 100)
            mem[0] = 14
            address(stor19.field_0) = funders[idx].field_0
            if stor16 > 50:
                call address(stor19.field_0) with:
                   value stor18 wei
                     gas 0 wei
            idx = idx + 1
            continue 
        funders.length = 0
        idx = 0
        while 3 * funders.length > idx:
            funders[idx].field_0 = 0
            funders[idx].field_256 = 0
            funders[idx].field_512 = 0
            idx = idx + 1
            continue 
        emit 0x8aa2ffae 
        stor0 = stage + 1 or Mask(248, 8, stor0)
    if sub_256d1835 < 50:
        stor15 = funders.length
        idx = 0
        while idx < stor15:
            require idx < funders.length
            stor16 = funders[idx].field_512
            stor18 = funders[idx].field_256 + (98 * funders[idx].field_256 / 100)
            mem[0] = 14
            address(stor19.field_0) = funders[idx].field_0
            if stor16 < 50:
                call address(stor19.field_0) with:
                   value stor18 wei
                     gas 0 wei
            idx = idx + 1
            continue 
        funders.length = 0
        idx = 0
        while 3 * funders.length > idx:
            funders[idx].field_0 = 0
            funders[idx].field_256 = 0
            funders[idx].field_512 = 0
            idx = idx + 1
            continue 
        emit 0x8aa2ffae 
        stor0 = stage + 1 or Mask(248, 8, stor0)
    if sub_256d1835 == 50:
        stor15 = funders.length
        idx = 0
        while idx < stor15:
            require idx < funders.length
            stor16 = funders[idx].field_512
            stor18 = funders[idx].field_256
            mem[0] = 14
            address(stor19.field_0) = funders[idx].field_0
            if stor16 == 50:
                call address(stor19.field_0) with:
                   value stor18 wei
                     gas 0 wei
            idx = idx + 1
            continue 
        funders.length = 0
        idx = 0
        while 3 * funders.length > idx:
            funders[idx].field_0 = 0
            funders[idx].field_256 = 0
            funders[idx].field_512 = 0
            idx = idx + 1
            continue 
        emit 0x8aa2ffae 
        stor0 = stage + 1 or Mask(248, 8, stor0)
        return 0
    else:
        return 0
}



}
