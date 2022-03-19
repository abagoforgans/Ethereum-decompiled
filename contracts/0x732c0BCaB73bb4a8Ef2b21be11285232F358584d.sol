contract main {


// =======================  Init code  ======================


uint8 stor1;
uint256 stor2;
uint8 stor3;
uint256 stor3; offset 8

function _fallback() payable {
    stor1 = 5
    stor2 = 0
    uint8(stor3.field_0) = 10
    Mask(248, 0, stor3.field_8) = Mask(248, 0, msg.sender)
    return code.data[81 len 1472]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
uint8 sub_4c1a4115;
uint256 stor1;
uint256 balance;
uint8 sub_5a9f6b0b;
address owner; offset 8
uint256 stor3; offset 8

function sub_4c1a4115(?) payable {
    return uint8(sub_4c1a4115)
}

function sub_5a9f6b0b(?) payable {
    return sub_5a9f6b0b
}

function owner() payable {
    return owner
}

function balance() payable {
    return balance
}

function SetOwner(address arg1) payable {
    if msg.sender == owner:
        stor3 = Mask(248, 0, arg1)
}

function sub_5bab2591(?) payable {
    if msg.sender == owner:
        uint256(stor1) = arg1 or Mask(248, 8, uint256(stor1))
}

function sub_fd709fd4(?) payable {
    if msg.sender == owner:
        call arg1 with:
           value 10^18 * arg2 wei
             gas 0 wei
}

function participants(address arg1) payable {
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512, stor0[arg1].field_768
}

function sub_2e219366(?) payable {
    if stor0[address(msg.sender)].field_512 < block.timestamp:
        if msg.value < 10^15:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            balance += msg.value
            stor0[address(msg.sender)].field_256 += msg.value
}

function Deposit() payable {
    if msg.value < 10^15:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        balance += msg.value
        stor0[address(msg.sender)].field_0 = msg.sender or Mask(96, 160, stor0[address(msg.sender)].field_0)
        stor0[address(msg.sender)].field_256 = msg.value
        stor0[address(msg.sender)].field_512 = block.timestamp
        stor0[address(msg.sender)].field_768 = sub_5a9f6b0b
}

function _fallback() payable {
    if msg.value < 10^15:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        balance += msg.value
        stor0[address(msg.sender)].field_0 = msg.sender or Mask(96, 160, stor0[address(msg.sender)].field_0)
        stor0[address(msg.sender)].field_256 = msg.value
        stor0[address(msg.sender)].field_512 = block.timestamp
        stor0[address(msg.sender)].field_768 = sub_5a9f6b0b
}

function sub_0bb89496(?) payable {
    if stor0[address(msg.sender)].field_512 < block.timestamp:
        if arg1 <= stor0[address(msg.sender)].field_256:
            if balance >= arg1 + (arg1 * block.timestamp - stor0[address(msg.sender)].field_512 / 720 * 24 * 3600 * stor0[address(msg.sender)].field_768 / 100):
                call msg.sender with:
                   value arg1 + (arg1 * block.timestamp - stor0[address(msg.sender)].field_512 / 720 * 24 * 3600 * stor0[address(msg.sender)].field_768 / 100) - ((arg1 * uint8(sub_4c1a4115)) + (arg1 * block.timestamp - stor0[address(msg.sender)].field_512 / 720 * 24 * 3600 * stor0[address(msg.sender)].field_768 / 100 * uint8(sub_4c1a4115)) / 100) wei
                     gas 0 wei
                call owner with:
                   value (arg1 * uint8(sub_4c1a4115)) + (arg1 * block.timestamp - stor0[address(msg.sender)].field_512 / 720 * 24 * 3600 * stor0[address(msg.sender)].field_768 / 100 * uint8(sub_4c1a4115)) / 100 wei
                     gas 0 wei
                stor0[address(msg.sender)].field_256 -= arg1
                balance = balance - arg1 - (arg1 * block.timestamp - stor0[address(msg.sender)].field_512 / 720 * 24 * 3600 * stor0[address(msg.sender)].field_768 / 100)
}

function sub_bfcd3c64(?) payable {
    if stor0[address(msg.sender)].field_512 < block.timestamp:
        if arg1:
            if balance >= stor0[address(msg.sender)].field_256 + (stor0[address(msg.sender)].field_256 * block.timestamp - stor0[address(msg.sender)].field_512 / 720 * 24 * 3600 * stor0[address(msg.sender)].field_768 / 100):
                call msg.sender with:
                   value stor0[address(msg.sender)].field_256 + (stor0[address(msg.sender)].field_256 * block.timestamp - stor0[address(msg.sender)].field_512 / 720 * 24 * 3600 * stor0[address(msg.sender)].field_768 / 100) - ((stor0[address(msg.sender)].field_256 * uint8(sub_4c1a4115)) + (stor0[address(msg.sender)].field_256 * block.timestamp - stor0[address(msg.sender)].field_512 / 720 * 24 * 3600 * stor0[address(msg.sender)].field_768 / 100 * uint8(sub_4c1a4115)) / 100) wei
                     gas 0 wei
                call owner with:
                   value (stor0[address(msg.sender)].field_256 * uint8(sub_4c1a4115)) + (stor0[address(msg.sender)].field_256 * block.timestamp - stor0[address(msg.sender)].field_512 / 720 * 24 * 3600 * stor0[address(msg.sender)].field_768 / 100 * uint8(sub_4c1a4115)) / 100 wei
                     gas 0 wei
                stor0[address(msg.sender)].field_0 = 0
                stor0[address(msg.sender)].field_256 = 0
                stor0[address(msg.sender)].field_512 = 0
                stor0[address(msg.sender)].field_768 = 0
                balance = balance - stor0[address(msg.sender)].field_256 - (stor0[address(msg.sender)].field_256 * block.timestamp - stor0[address(msg.sender)].field_512 / 720 * 24 * 3600 * stor0[address(msg.sender)].field_768 / 100)
}



}
